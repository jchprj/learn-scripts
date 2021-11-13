echo https://rclone.org/onedrive/
rclone config
echo List directories in top level of your OneDrive
rclone lsd remote:
echo List all the files in your OneDrive
rclone ls remote:
echo To copy a local directory to an OneDrive directory called backup
echo rclone copy /home/source remote:backup
echo Or
echo rclone copy remote:backup /home/source