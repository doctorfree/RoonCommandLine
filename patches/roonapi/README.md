# RoonCommandLine/patches/roonapi

If the installation script did not apply the patches to the Python Roon API correctly,
you can use these files as replacements for the installed Python Roon API in order
to add the media listing features of the Roon Command Line. Locate the Python Roon API
installation folder and copy these files to that location, replacing the existing ones.
Common locations for the Python Roon API site-packages folder include

    $HOME/.local/lib/python3.8/site-packages/roonapi/

or

    $HOME/Python3/lib/python3.8/site-packages/roonapi/

The Python User site-packages location can be found by executing the command:

    $ python -m site --user-site

If that path does not contain the Python Roon API site-packages module then a list
of locations Python searches for site-packages can be found by executing:

    $ python -c 'import site; print(site.getsitepackages())' | tr -d '[],'

## Contents

[**roonapi.py**](roonapi.py) - Python Roon API with already applied patch to be copied to the installed roonapi Python module (e.g. after "pip install roonapi")

[**roonapisocket.py**](roonapisocket.py) - Python Roon API with already applied patch to be copied to the installed roonapi Python module
