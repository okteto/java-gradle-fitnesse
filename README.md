# Develop an Application with Java, Gradle, Sprint and Fitnesse

This sample shows you how to develop a rest service using spring, and how to test it with [Fitnesse](http://fitnesse.org/) using a remote development environment deployed with Okteto.

## Login to Okteto 

    $ okteto login <$URL>
    $ okteto namespace

> If running in okteto cloud, remove the URL parameter.


## Deploy the Application

    $ okteto stack deploy --build

The application can be accessed via the https endpoint displayed in the Okteto UI.

## Development Workflow

1. Launch your remote development environment by running the `okteto up` command: 
    
        $ okteto up --build
  
   The remote development environment is already configured with all the tools you need, and all your files will be synchronized between your local machine and the remote development environment. You can perform all your development tasks there, such as: build your code, start the application, run your tests, etc...
  
1. Start the service in the remote terminal 
    
        root@hello-556fb8588-csglf:/usr/src/app# gradle bootRun
  
    The spring app is now available on http://localhost:8080, or over the https endpoint displayed in the okteto UI

1. In your local machine, start a second terminal, and access your remote environment with the `okteto exec --bash` command:
    
        $ okteto exec -- bash

1. Start the `FitNesse` server in the new remote terminal: 
    
        root@hello-556fb8588-csglf:/usr/src/app# okteto exec -- gradle fitnesse 

    The `FitNesse` server is now available on http://localhost:8000. You can now proceed to run your own tests there.

## Test Your Changes

... work in progress ...