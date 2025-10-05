@echo off
setlocal ENABLEDELAYEDEXPANSION

rem ===== USER SETTINGS =====
set "FFmpegPath=C:\ffmpeg"
set "USE_NVENC=yes"        rem yes/no
set "VIDEO_CODEC=h265"     rem h264 / h265
set "SCALE_MODE=integer"   rem integer / lanczos
set "TARGET_RES=8K"        rem 1K / 2K / 4K / 8K
set "YOUTUBE=yes"          rem yes: yuv420p + MKV + BT.709 tags + _youtube / no: MP4 without color tags
set "USE_FULL_RANGE=yes"   rem yes: pc / no: tv (only effective when YOUTUBE=yes)
rem ==========================

rem --- Locate ffmpeg.exe ---
set "FFBIN=%FFmpegPath%\ffmpeg.exe"
if exist "%FFBIN%" goto :ffok
set "FFBIN=%FFmpegPath%\bin\ffmpeg.exe"
if exist "%FFBIN%" goto :ffok
set "FFBIN=ffmpeg.exe"
where /q ffmpeg.exe && goto :ffok
echo [ERROR] ffmpeg.exe not found. Check FFmpegPath or system PATH.
pause & exit /b 1
:ffok

rem --- Resolution map ---
if /I "%TARGET_RES%"=="1K" (set "W=1920"  & set "H=1080")
if /I "%TARGET_RES%"=="2K" (set "W=2560"  & set "H=1440")
if /I "%TARGET_RES%"=="4K" (set "W=3840"  & set "H=2160")
if /I "%TARGET_RES%"=="8K" (set "W=7680"  & set "H=4320")
if not defined W (echo [ERROR] TARGET_RES must be one of 1K / 2K / 4K / 8K & pause & exit /b 1)

rem --- Scaling filter ---
if /I "%SCALE_MODE%"=="integer" (
  set "VFILTER=scale=%W%:%H%:flags=neighbor"
) else (
  set "VFILTER=scale=%W%:%H%:flags=lanczos"
)

rem --- Video encoder selection ---
if /I "%USE_NVENC%"=="yes" (
  if /I "%VIDEO_CODEC%"=="h264" (
    set "VENC=-c:v h264_nvenc -tune lossless -preset lossless"
  ) else if /I "%VIDEO_CODEC%"=="h265" (
    set "VENC=-c:v hevc_nvenc -tune lossless -preset lossless"
  ) else (
    echo [ERROR] VIDEO_CODEC must be h264 or h265.
    pause & exit /b 1
  )
) else (
  if /I "%VIDEO_CODEC%"=="h264" (
    set "VENC=-c:v libx264 -crf 0 -preset veryfast -coder cabac"
  ) else if /I "%VIDEO_CODEC%"=="h265" (
    set "VENC=-c:v libx265 -x265-params lossless=1"
  ) else (
    echo [ERROR] VIDEO_CODEC must be h264 or h265.
    pause & exit /b 1
  )
)

rem --- Output format, color tags, and filename tag ---
set "OUTEXT=mp4"
set "OUTFMT=mp4"
set "PIXFMT="
set "COLOROPTS="
set "MOVFLAGS=-movflags +faststart"
set "OUTTAG="

if /I "%YOUTUBE%"=="yes" (
  set "OUTEXT=mkv"
  set "OUTFMT=matroska"
  set "PIXFMT=-pix_fmt yuv420p"
  if /I "%USE_FULL_RANGE%"=="yes" (set "CRANGE=pc") else set "CRANGE=tv"
  set "COLOROPTS=-colorspace bt709 -color_trc bt709 -color_primaries bt709 -color_range !CRANGE!"
  set "MOVFLAGS="  rem faststart not used for MKV
  set "OUTTAG=_youtube"
)

:loop
if "%~1"=="" goto :end

set "in=%~1"
set "out=%~dpn1_%TARGET_RES%HD_%SCALE_MODE%_%VIDEO_CODEC%!OUTTAG!.%OUTEXT%"

rem --- Build and display command, then execute ---
set "CMD="%FFBIN%" -y -i "%in%" -vf "!VFILTER!" -aspect 16:9 !VENC! !PIXFMT! !COLOROPTS! -c:a copy !MOVFLAGS! -f !OUTFMT! "%out%"" 
echo.
echo ===== ffmpeg command =====
echo !CMD!
echo ==========================
call !CMD!

if errorlevel 1 (
  echo [WARN] Failed: "%~1"
) else (
  echo [OK] Output: "%out%"
)

shift
goto :loop

:end
echo.
echo Done.
pause
