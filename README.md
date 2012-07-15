
Installation
============

    cp local_settings.tmpl local_settings
    # edit local_settings
    . local_settings
    virtualenv pyenv
    . pyenv/bin/activate

You probably need to install ckanclient and oursql at this point

    cd data
    ../bin/get_tabular name-of-dataset $CKAN_API_KEY $CKAN_LOCATION
    make
