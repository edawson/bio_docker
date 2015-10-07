bio\_docker
---------------------------------------
Eric T Dawson  
October 2015

## What is it?  
The bio\_docker report contains a number of
directories. Each directory contains a build file for the
relevant bioinformatics tool that is wrapped by the Dockerfile in
that directory.


## Current Status  
bio\_docker is under really active development as are the tools underneath,
so expect regular and major changes. Currently, only vg\_d and cortex\_d are
functional build scripts. The rest are simply placeholders.

## Usage  
To build any of the images in the repo, simply:
1. Pull the repo
2. ```cd``` to the desired directory
3. Run ```docker build .```
4. Hopefully your image will be built and you can run it using ```docker run <imgRef>```

Things are still under really active development, so they may not always work so well.
If they don't feel free to issue a pull request or report an issue.


## Considerations  
Docker is a pain to run on a managed cluster unless you are really tight with your sysadmins.
Since I'm in between clusters, things are tested to run on Mac OS X, but since the whole point
of Docker is to run on anything HOPEFULLY it will work on your system.

License: MIT
