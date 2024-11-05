import pytchat
import csv
from datetime import datetime

video_id = "VideoIDHere"
chat = pytchat.create(video_id=video_id)
current_datetime = datetime.now().strftime('%Y-%m-%d_%H-%M')
csv_filename = f'FOX_{current_datetime}.csv'

with open(csv_filename, mode='a', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(['Date', 'Username', 'Comment'])
    while chat.is_alive():
        for c in chat.get().sync_items():
            date = datetime.now().strftime('%H:%M:%S')
            username = c.author.name
            comment = c.message
            writer.writerow([date, username, comment])
          #optional if you want to live monitor
            print(f"NameHere - {date} - {username}: {comment}")
