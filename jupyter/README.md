# Jupyter

[Running the Notebook — Jupyter Documentation 4.1.1 alpha documentation](https://docs.jupyter.org/en/latest/running.html)

    jupyter notebook
    jupyter notebook notebook.ipynb
    jupyter notebook --port 9999
    jupyter notebook --no-browser
    jupyter notebook --help
    jupyter run notebook.ipynb
    jupyter run notebook.ipynb notebook2.ipynb
    jupyter run notebook.ipynb --allow-errors


[python - Jupyter Notebook Server password invalid - Stack Overflow](https://stackoverflow.com/questions/39759623/jupyter-notebook-server-password-invalid)

    jupyter server password

[how to close running jupyter notebook servers? · Issue #2844 · jupyter/notebook](https://github.com/jupyter/notebook/issues/2844)

    jupyter notebook list
    jupyter notebook stop 8888 (failed)
    kill -9 [PID]

[ipython - IOPub data rate exceeded in Jupyter notebook (when viewing image) - Stack Overflow](https://stackoverflow.com/questions/43288550/iopub-data-rate-exceeded-in-jupyter-notebook-when-viewing-image)

     --NotebookApp.iopub_data_rate_limit=1.0e10

## Git without output

[python - How to clear Jupyter Notebook's output and metadata when using git commit? - Stack Overflow](https://stackoverflow.com/questions/73218304/how-to-clear-jupyter-notebooks-output-and-metadata-when-using-git-commit)

    jq --indent 1 \
    '
    (.cells[] | select(has("outputs")) | .outputs) = []
    | (.cells[] | select(has("execution_count")) | .execution_count) = null
    | .metadata = {"language_info": {"name":"python", "pygments_lexer": "ipython3"}}
    | .cells[].metadata = {}
    ' 01-parsing.ipynb

    [filter "nbstrip"]
    clean = jq --indent 1 '(.. |."execution_count"? | select(. != null)) = null'
    smudge = cat

CLI:
```
git config filter.strip-notebook-output.clean "jq --indent 1 '(.. |.outputs? | select(. != null)) = null'" && git config filter.strip-notebook-output.smudge "cat"
```

Or edit file Git config file

[Git Smudge and Clean Filters: Making Changes So You Don't Have To - Big Nerd Ranch](https://bignerdranch.com/blog/git-smudge-and-clean-filters-making-changes-so-you-dont-have-to/)

    $(PROJECTDIR)/.git/config

[How to commit jupyter notebooks without output to git while keeping the notebooks outputs intact locally · GitHub](https://gist.github.com/33eyes/431e3d432f73371509d176d0dfb95b6e)

    git config filter.strip-notebook-output.clean 'jupyter nbconvert --ClearOutputPreprocessor.enabled=True --to=notebook --stdin --stdout --log-level=ERROR'  

    .gitattributes
        *.ipynb filter=strip-notebook-output  


## nbconvert 

[python - How export a Jupyter notebook to HTML from the command line? - Stack Overflow](https://stackoverflow.com/questions/36901154/how-export-a-jupyter-notebook-to-html-from-the-command-line)

    jupyter nbconvert --to html notebook.ipynb


## Installation

[ERROR: Can not execute \`setup.py\` since setuptools is not available in the build environment. · Issue #573 · pypa/packaging-problems · GitHub](https://github.com/pypa/packaging-problems/issues/573)

    pip install --upgrade setuptools

    pip uninstall setuptools
    pip install setuptools

Need 6x+ version

[Installation — JupyterLab 4.0.7 documentation](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html)

    pip install jupyterlab


[python - IPython Notebook ipywidgets does not show - Stack Overflow](https://stackoverflow.com/questions/36351109/ipython-notebook-ipywidgets-does-not-show)

    pip install ipywidgets

[Installation — Jupyter Widgets 8.1.1 documentation](https://ipywidgets.readthedocs.io/en/latest/user_install.html)

    pip install ipywidgets

## nbextensions

[Enabling Jupyter Notebook extensions — The Littlest JupyterHub documentation](https://tljh.jupyter.org/en/stable/howto/admin/enable-extensions.html)

    pip install jupyter_contrib_nbextensions
    jupyter contrib nbextension install --user
    jupyter nbextension enable scratchpad/main --user
    jupyter nbextension list

Need reload after above commands

[python 3.x - ModuleNotFoundError: No module named 'notebook.base' when installing nbextensions - Stack Overflow](https://stackoverflow.com/questions/76893872/modulenotfounderror-no-module-named-notebook-base-when-installing-nbextension)

    pip install --upgrade notebook==6.4.12

