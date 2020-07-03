# feature-toggle-at-nginx-level

## Demo

`docker build . -t feature-toggle-at-nginx-level:latest`

Sorry for the long build process, it installs all the required stuff by each framework :sweat_smile:

`docker run --rm -p 8080:80 feature-toggle-at-nginx-level`

:warning: You might need to clean your cache to see the application change, but it shouldn't after the latest fix :smile:

Check the demo at http://localhost:8080

## Supporting Tools

I use the Cookie Editor Browser extension in case you don't want to add a button.

https://cookie-editor.cgagnier.ca/