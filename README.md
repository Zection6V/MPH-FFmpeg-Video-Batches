# MPH-FFmpeg-Video-Batches

# How to set up FFmpeg for the stretch batch script

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

6. **Run the batch script**  
   - Now, simply drag and drop your video files onto the provided batch file.  
   - The script will use FFmpeg to stretch them to the specified resolution.  
