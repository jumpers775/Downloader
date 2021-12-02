import youtube_dl
def download(video):
    ydl_opts = {'outtmpl': '$HOME/Downloads/%(title)s.%(ext)s'}
    with youtube_dl.YoutubeDL(ydl_opts) as ydl:
        ydl.download([video])
