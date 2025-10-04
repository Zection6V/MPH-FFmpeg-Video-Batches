@echo off
rem Specify the path to FFmpeg (unnecessary if FFmpeg is set in the path)
set FFmpegPath=C:\ffmpeg

rem Process the files dragged and dropped onto the script
:loop
if "%~1"=="" goto endloop

rem Get the path of the input file
set inputFile=%~1

rem Set the path of the output file (save in the same directory with "_8KHD_stretched" appended)
set outputFile=%~dpn1_8KHD_stretched.mp4

rem Execute the FFmpeg command: Stretch to 8K HD (7680x4320) with 16:9 aspect ratio, using Nearest Neighbor (Point) sampling
"%FFmpegPath%\ffmpeg" -i "%inputFile%" -vf "scale=7680:4320:flags=lanczos" -aspect "16:9" -c:v h264_nvenc -tune lossless -coder cabac -c:a copy "%outputFile%"

rem Move on to the next file
shift
goto loop

:endloop
echo Processing is complete.
pause
