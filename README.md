# MPH-FFmpeg-Video-Batches

## Example: Before and After (Integer Scaling)

**Before**  
<img width="225" height="90" alt="image" src="https://github.com/user-attachments/assets/c8b31ff0-2df3-4c66-a1d5-2fe523f88380" />

**After**  
<img width="1358" height="425" alt="image" src="https://github.com/user-attachments/assets/85a3a118-1b2a-4cec-b876-03ff6ca55157" />

## Example

### Integer Scaling
- **From original Nintendo DS resolution (256x192) → 8KHD**  
  [https://www.youtube.com/watch?v=GMCXcBl8_sk](https://www.youtube.com/watch?v=GMCXcBl8_sk)

- **Even from MelonPrimeDS high-resolution screen → 8KHD**  
  [https://www.youtube.com/watch?v=k_U3aPnXb4g](https://www.youtube.com/watch?v=k_U3aPnXb4g)

### Lanczos Scaling
- **Even if the original video footage is low-quality, you can still upscale it to 8K by using the Lanczos Scaling.**  
  [https://www.youtube.com/watch?v=e-VjgkMY4Hs](https://www.youtube.com/watch?v=e-VjgkMY4Hs)


---

## English

A collection of batch scripts for scaling and stretching video files with FFmpeg.  
Drag and drop your videos onto the batch file, and a resized version will be generated automatically.  

---

### How to set up FFmpeg for the stretch batch script

1. **Download FFmpeg**  
   - Go to the official builds page:  
     [https://github.com/BtbN/FFmpeg-Builds/wiki/Latest](https://github.com/BtbN/FFmpeg-Builds/wiki/Latest)  
   - Click on **win64-gpl** to download the ZIP file.  

2. **Extract the ZIP file**  
   - After downloading, extract the ZIP archive.  
   - Inside, you will find a folder named **bin**.  

3. **Locate the required executables**  
   - Inside the **bin** folder you will see these three files:  
     - `ffmpeg.exe`  
     - `ffplay.exe`  
     - `ffprobe.exe`  

4. **Create the FFmpeg folder in C: drive**  
   - In your C: drive, create a new folder called **ffmpeg**.  
   - Path example: `C:\ffmpeg`  

5. **Move the executables**  
   - Copy the three files (`ffmpeg.exe`, `ffplay.exe`, `ffprobe.exe`) into the new `C:\ffmpeg` folder.  

   <img width="678" height="216" alt="image" src="https://github.com/user-attachments/assets/d95b098b-8f3e-4ab5-b39c-fd74533f5e82" />

6. **Run the batch script**  
   - Now, simply drag and drop your video files onto the provided batch file.  
   - A stretched version of your video will be generated in the same folder as the original file.  

---

## 日本語

FFmpegを利用して動画を拡大・引き伸ばすためのバッチスクリプト集です。  
動画ファイルをバッチファイルにドラッグ＆ドロップするだけで、自動的に指定解像度に変換されたバージョンが生成されます。  

---

### FFmpeg のセットアップ手順（ストレッチ用バッチスクリプト）

1. **FFmpeg をダウンロード**  
   - 公式ビルドページへアクセスしてください：  
     [https://github.com/BtbN/FFmpeg-Builds/wiki/Latest](https://github.com/BtbN/FFmpeg-Builds/wiki/Latest)  
   - **win64-gpl** をクリックして ZIP ファイルをダウンロードします。  

2. **ZIPファイルを展開**  
   - ダウンロード後、ZIPファイルを展開してください。  
   - 中に **bin** フォルダがあります。  

3. **必要な実行ファイルを確認**  
   - **bin** フォルダ内に以下の3つの実行ファイルがあります：  
     - `ffmpeg.exe`  
     - `ffplay.exe`  
     - `ffprobe.exe`  

4. **CドライブにFFmpegフォルダを作成**  
   - Cドライブ直下に **ffmpeg** フォルダを新規作成してください。  
   - 例: `C:\ffmpeg`  

5. **実行ファイルを移動**  
   - 先ほどの3つのファイルを `C:\ffmpeg` フォルダにコピーしてください。  

   <img width="678" height="216" alt="image" src="https://github.com/user-attachments/assets/d95b098b-8f3e-4ab5-b39c-fd74533f5e82" />

6. **バッチスクリプトを実行**  
   - 用意したバッチファイルに動画ファイルをドラッグ＆ドロップしてください。  
   - 引き延ばされた動画が元動画と同じフォルダに新たに生成されます。  


---

## Usage Examples (English)

### 🎬 With Effects
- Example: You have a video at **256x192 (DS resolution, for example)** as your raw material.  
- First, upscale it to **HD resolution (e.g., 1080p)** using the batch script.  
- Apply effects or editing to the HD video.  
- Finally, convert the completed video to **8K (lossless recommended)**.  
➡ This makes editing easier while still achieving a high-quality final output.  

---

### 🎬 Without Effects
- Example: You have a video at **256x192 (DS resolution, for example)** as your raw material.  
- Keep it at the original resolution throughout the editing process.  
- Export the edited video in a **lossless format (e.g., AVI)**.  
- Then upscale the final output directly to **8K**.  
➡ This keeps editing lightweight and speeds up processing.  

---

💡 **Tip**:  
- If you want to apply **effects** → upscale to HD first, then edit.  
- If you want to keep it **without effects** → edit at the original resolution and only upscale at the end.  

---

## 使い方の例（日本語）

### 🎬 エフェクトを付ける場合
- 例: 元素材が **256x192 (DS解像度の例)** の動画である場合  
- まずバッチを使って **HD解像度 (例: 1080p)** にアップスケール  
- HD動画にエフェクトや編集を加える  
- 最後に完成した動画を **8K (ロスレス推奨)** に変換  
➡ 編集作業がやりやすくなり、高画質な最終出力を得られる  

---

### 🎬 エフェクトを付けない場合
- 例: 元素材が **256x192 (DS解像度の例)** の動画である場合  
- 元の解像度のまま編集を行う  
- 編集後に **ロスレス形式 (例: AVI)** で出力  
- 完成した動画を一気に **8K** にアップスケール  
➡ 編集が軽くなり、処理が高速化  

---

💡 **Tip**:  
- **エフェクトを付けたい場合** → 先にHDにアップスケールしてから編集。  
- **エフェクトを付けない場合** → 元の解像度で編集して、最後に8Kにアップスケール。  
