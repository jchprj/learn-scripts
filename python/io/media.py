# https://stackoverflow.com/questions/20021457/playing-mp3-song-on-python
# pip install pygame

# https://stackoverflow.com/questions/48690984/portaudio-h-no-such-file-or-directory
# Ubuntu 20.04: sudo apt install portaudio19-dev python3-pyaudio

import time
from pygame import mixer  # Load the popular external library

mixer.init()
mixer.music.load('abc.mp3')
mixer.music.play()
while mixer.music.get_busy():  # wait for music to finish playing
    time.sleep(1)