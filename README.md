# MPH-FFmpeg-Video-Batches

A collection of batch scripts for scaling and stretching video files with FFmpeg.  
Drag and drop your videos onto the batch file, and they will be resized automatically.  

FFmpegを利用して動画を拡大・引き伸ばすためのバッチスクリプト集です。  
動画ファイルをバッチファイルにドラッグ＆ドロップするだけで、自動的に指定解像度に変換されます。  

---

## How to set up FFmpeg for the stretch batch script  
## FFmpeg のセットアップ手順（ストレッチ用バッチスクリプト）

1. **Download FFmpeg**  
   - Go to the official builds page:  
     [https://github.com/BtbN/FFmpeg-Builds/wiki/Latest](https://github.com/BtbN/FFmpeg-Builds/wiki/Latest)  
   - Click on **win64-gpl** to download the ZIP file.  

   **FFmpeg をダウンロード**  
   - 公式ビルドページへアクセスしてください：  
     [https://github.com/BtbN/FFmpeg-Builds/wiki/Latest](https://github.com/BtbN/FFmpeg-Builds/wiki/Latest)  
   - **win64-gpl** をクリックして ZIP ファイルをダウンロードします。  

2. **Extract the ZIP file**  
   - After downloading, extract the ZIP archive.  
   - Inside, you will find a folder named **bin**.  

   **ZIPファイルを展開**  
   - ダウンロード後、ZIPファイルを展開してください。  
   - 中に **bin** フォルダがあります。  

3. **Locate the required executables**  
   - Inside the **bin** folder you will see these three files:  
     - `ffmpeg.exe`  
     - `ffplay.exe`  
     - `ffprobe.exe`  

   **必要な実行ファイルを確認**  
   - **bin** フォルダ内に以下の3つの実行ファイルがあります：  
     - `ffmpeg.exe`  
     - `ffplay.exe`  
     - `ffprobe.exe`  

4. **Create the FFmpeg folder in C: drive**  
   - In your C: drive, create a new folder called **ffmpeg**.  
   - Path example: `C:\ffmpeg`  

   **CドライブにFFmpegフォルダを作成**  
   - Cドライブ直下に **ffmpeg** フォルダを新規作成してください。  
   - 例: `C:\ffmpeg`  

5. **Move the executables**  
   - Copy the three files (`ffmpeg.exe`, `ffplay.exe`, `ffprobe.exe`) into the new `C:\ffmpeg` folder.  

   **実行ファイルを移動**  
   - 先ほどの3つのファイルを `C:\ffmpeg` フォルダにコピーしてください。

   <img width="678" height="216" alt="image" src="https://github.com/user-attachments/assets/d95b098b-8f3e-4ab5-b39c-fd74533f5e82" />


6. **Run the batch script**  
   - Now, simply drag and drop your video files onto the provided batch file.  
   - The script will use FFmpeg to stretch them to the specified resolution.  

   **バッチスクリプトを実行**  
   - 用意したバッチファイルに動画ファイルをドラッグ＆ドロップしてください。  
   - FFmpegが実行され、指定した解像度に引き伸ばされます。  

---

## Example: Before and After  (Integer Scaling)
## 変換前後の例(Integer Scaling)

Here’s how it looks:  
こんな感じになります👇  

**Before / 変換前**  
<img width="225" height="90" alt="image" src="https://github.com/user-attachments/assets/c8b31ff0-2df3-4c66-a1d5-2fe523f88380" />

**After / 変換後**  
<img width="1358" height="425" alt="image" src="https://github.com/user-attachments/assets/85a3a118-1b2a-4cec-b876-03ff6ca55157" />
