# Spotify Data Collection Guide

To integrate your Spotify playlists with Fizy, you need to request your data from Spotify. Follow these steps to obtain the necessary JSON file:

1. **Log in to Your Spotify Account:**
   - Go to the [Spotify Account](https://www.spotify.com/account) page and log in with your credentials.

2. **Navigate to Privacy Settings:**
   - Once logged in, navigate to the **Privacy Settings** section.

3. **Request Your Data:**
   - In the Privacy Settings, look for the option to request your data. There should be a button labeled **"Request your data"** or similar. Click this button to create a request for your data.

4. **Wait for the Email:**
   - Spotify will process your request and send you an email with your data. This process can take up to one week.

5. **Download the Data:**
   - Once you receive the email from Spotify, download the data. Look for a file named `Playlist1.json` in the downloaded data. This is the JSON file we need for the Fizy integration.

6. **Place the JSON File:**
   - Place the `Playlist1.json` file in a directory of your choice. You will need to provide the path to this file when running the `spotifyfizyfit` script.

7. **Example for JSON File:**
   - If you need to manually create the JSON file, please refer to the example JSON file located at [others/example.json](others/example.json). Here is a sample structure for your reference:

That's it! You now have the necessary data to integrate your Spotify playlists with Fizy.