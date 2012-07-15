
Installation
============

    cp local_settings.tmpl local_settings
    # edit local_settings
    . local_settings
    virtualenv pyenv
    . pyenv/bin/activate
    pip install ckanclient
    pip install oursql

Usage
=====

Loading datasets
----------------

    cd data
    ../bin/get_tabular name-of-dataset $CKAN_API_KEY $CKAN_LOCATION
    make

Using datasets
--------------

    $ R
    > source("loadsql.r")
    > get_ds("name_of_sql_table")