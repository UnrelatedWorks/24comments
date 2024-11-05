24comments
Overview

24comments is a community-driven project aimed at gathering and analyzing Open Source Intelligence (OSINT) comments from live YouTube streams from the 2024 election. The goal is to collect data from various streams, compare the results, and observe how viewer sentiments shift over time, especially in relation to other channels.

Currently it just monitors "bigger" outlets, I'd be up to accepting comments from other streams.

Features

    Collect comments from live YouTube streams in real-time.
    Store and organize collected comments for analysis.
    Compare comments from different streams to identify trends and shifts in viewer sentiment.
    Community-driven: everyone can run the software and contribute to the data collection.

Simple: Does what it says on the box, no configuration neccesary.
The script installs the necessary dependencies (screen and pytchat) and creates Python scripts to monitor live YouTube streams for comments. It sets up individual monitoring scripts for specific YouTube video IDs, each script collecting comments in real-time and saving them to CSV files. The script then starts separate screen sessions for each monitoring script, allowing them to run concurrently in the background. This setup enables the collection and comparison of comments from multiple live streams simultaneously.

Custom: Set your own streams and sources

Getting Started
Prerequisites

    Python 3.7 or higher
    screen
    pytchat

Installation

  Simple:
  1. bash setup.sh 
  2. Push into "data" once streams finish.

  Custom:

  1. Edit the sample monitor by changing the stream ID and filename
  2. Install screen and pytchat
  3. Run!
  4. Push into "data" once streams finish.

Usage

    Start collecting comments from a live stream:

    python filename.py

    Replace VIDEO_ID with the ID of the YouTube live stream you want to collect comments from.

    The comments will be saved live in a csv. 

Contributing

We welcome contributions from the community! Here’s how you can help:

    Fork the repository.
    Create a new branch:

    git checkout -b feature/your-feature-name

    Make your changes and commit them:

    git commit -m "Add your commit message"

    Push to the branch:

    git push origin feature/your-feature-name

    Open a pull request.

    Only Push into the "Data" folder.

License

This project is licensed under the MIT License. See the LICENSE file for details.
