# Installation



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

