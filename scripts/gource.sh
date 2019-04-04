gource --hide filenames,mouse,date,progress --camera-mode track --seconds-per-day 0.5 --auto-skip-seconds 0.2 --title "LUYA.io" --max-file-lag 0.1 -1280x720 -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4