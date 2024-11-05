#!/bin/bash

#sets up multiple monitors and screens 

# Install screen and pytchat
sudo apt-get update
sudo apt-get install -y screen
pip install pytchat

# Create Python scripts for each video
cat <<EOL > monitor_AP.py
import pytchat
import csv
from datetime import datetime

video_id = "iNmOm2WNdsQ"
chat = pytchat.create(video_id=video_id)
current_datetime = datetime.now().strftime('%Y-%m-%d_%H-%M')
csv_filename = f'AP_{current_datetime}.csv'

with open(csv_filename, mode='a', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(['Date', 'Username', 'Comment'])
    while chat.is_alive():
        for c in chat.get().sync_items():
            date = datetime.now().strftime('%H:%M:%S')
            username = c.author.name
            comment = c.message
            writer.writerow([date, username, comment])
            print(f"AP - {date} - {username}: {comment}")
EOL

cat <<EOL > monitor_CNBC.py
import pytchat
import csv
from datetime import datetime

video_id = "iIxQK0MLoIk"
chat = pytchat.create(video_id=video_id)
current_datetime = datetime.now().strftime('%Y-%m-%d_%H-%M')
csv_filename = f'CNBC_{current_datetime}.csv'

with open(csv_filename, mode='a', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(['Date', 'Username', 'Comment'])
    while chat.is_alive():
        for c in chat.get().sync_items():
            date = datetime.now().strftime('%H:%M:%S')
            username = c.author.name
            comment = c.message
            writer.writerow([date, username, comment])
            print(f"CNBC - {date} - {username}: {comment}")
EOL

cat <<EOL > monitor_CNN.py
import pytchat
import csv
from datetime import datetime

video_id = "l5lwU59kaN4"
chat = pytchat.create(video_id=video_id)
current_datetime = datetime.now().strftime('%Y-%m-%d_%H-%M')
csv_filename = f'CNN_{current_datetime}.csv'

with open(csv_filename, mode='a', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(['Date', 'Username', 'Comment'])
    while chat.is_alive():
        for c in chat.get().sync_items():
            date = datetime.now().strftime('%H:%M:%S')
            username = c.author.name
            comment = c.message
            writer.writerow([date, username, comment])
            print(f"CNN - {date} - {username}: {comment}")
EOL

cat <<EOL > monitor_FOX.py
import pytchat
import csv
from datetime import datetime

video_id = "Da1BxqG4uJM"
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
            print(f"FOX - {date} - {username}: {comment}")
EOL

cat <<EOL > monitor_IndiaToday.py
import pytchat
import csv
from datetime import datetime

video_id = "BX1zDNkk3wI"
chat = pytchat.create(video_id=video_id)
current_datetime = datetime.now().strftime('%Y-%m-%d_%H-%M')
csv_filename = f'IndiaToday_{current_datetime}.csv'

with open(csv_filename, mode='a', newline='', encoding='utf-8') as file:
    writer = csv.writer(file)
    writer.writerow(['Date', 'Username', 'Comment'])
    while chat.is_alive():
        for c in chat.get().sync_items():
            date = datetime.now().strftime('%H:%M:%S')
            username = c.author.name
            comment = c.message
            writer.writerow([date, username, comment])
            print(f"IndiaToday - {date} - {username}: {comment}")
EOL

# Create screen sessions to run each script
screen -dmS monitor_AP python3 monitor_AP.py
screen -dmS monitor_CNBC python3 monitor_CNBC.py
screen -dmS monitor_CNN python3 monitor_CNN.py
screen -dmS monitor_FOX python3 monitor_FOX.py
screen -dmS monitor_IndiaToday python3 monitor_IndiaToday.py

echo "Screen sessions started for each video."
