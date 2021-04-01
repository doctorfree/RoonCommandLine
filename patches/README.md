Scripts/Roon/patches
====================

Patches to the Python Roon API. Currently these patches add a method to search and display a list of objects in your Roon library matching the search criteria. For instance, display a list of Playlists that contain the term "Best".

Contents
--------

[**roonapi-listplaylist.patch**](Roon/patches/roonapi-listplaylist.patch) - Python Roon API patch to be applied to the installed Python module (e.g. after "pip install roonapi")

[**pyroon-listplaylist.patch**](Roon/patches/pyroon-listplaylist.patch) - Python Roon API patch to be applied to a cloned git repository

[**mkpatch-pyroon**](Roon/patches/mkpatch-pyroon) - Shell script used to create the pyroon patch above

[**mkpatch-roonapi**](Roon/patches/mkpatch-roonapi) - Shell script used to create the roonapi patch above
