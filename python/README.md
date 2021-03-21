# Python

Strings, lists, and tuples are objects
From <https://www.openbookproject.net/books/bpp4awd/ch03.html>

## pip

sudo pip install requests

From <https://stackoverflow.com/questions/17309288/importerror-no-module-named-requests> 


pip install -r requirements.txt

From <https://stackoverflow.com/questions/41457612/how-to-use-requirements-txt-to-install-all-dependencies-in-a-python-project> 


python3 -m pip install

From <https://stackoverflow.com/questions/50643068/python-installed-a-local-package-with-pip3-but-got-module-not-found-error> 
Instead of pip install

https://stackoverflow.com/questions/11091623/how-to-install-packages-offline
pip download -r requirements.txt
pip install --no-index --find-links /path/to/download/dir/ -r requirements.txt

## pipx

[pipxproject/pipx: Install and Run Python Applications in Isolated Environments](https://github.com/pipxproject/pipx)

```
python3 -m pip install --user pipx
python3 -m pipx ensurepath
```

On macOS:
```
brew install pipx
pipx ensurepath
```
Upgrade pipx with `brew update && brew upgrade pipx`.



## Python CLI

-u unbuffered

[how to get python print result in jenkins console output - Stack Overflow](https://stackoverflow.com/questions/22826006/how-to-get-python-print-result-in-jenkins-console-output)

## References

* Learning Python, 5th Edition Fifth Edition
By Mark Lutz  (Author)
From <https://www.amazon.com/Learning-Python-5th-Mark-Lutz/dp/1449355730/ref=sr_1_3?ie=UTF8&qid=1532001396&sr=8-3&keywords=python> 


* Python Pocket Reference: Python In Your Pocket (Pocket Reference (O'Reilly)) Fifth Edition
By Mark Lutz  (Author)
From <https://www.amazon.com/Python-Pocket-Reference-Your-OReilly/dp/1449357016/ref=sr_1_1?s=books&ie=UTF8&qid=1532049728&sr=1-1&keywords=python+pocket> 


* ConcurrentPython
By BruceEckel
From <https://github.com/BruceEckel/ConcurrentPython/blob/master/Chapters/00_Notes.md> 


* Why is Python so slow?
From <https://medium.com/@anthonypjshaw/why-is-python-so-slow-e5074b6fe55b> 


* All algorithms implemented in Python (for education)
https://github.com/TheAlgorithms/Python


* Microsoft: We want you to learn Python programming language for free
https://www.zdnet.com/google-amp/article/microsoft-we-want-you-to-learn-python-programming-language-for-free/