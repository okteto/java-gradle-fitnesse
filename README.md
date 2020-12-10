# Develop an Application with Java, Gradle, Sprint and Fitnesse

[![Develop on Okteto](https://okteto.com/develop-okteto.svg)](https://cloud.okteto.com/deploy)

This sample shows you how to develop a rest service using spring, and how to test it with [FitNesse](http://fitnesse.org/) using a remote development environment deployed with Okteto.

## Login to Okteto 

    $ okteto login <$URL>
    $ okteto namespace

> If running in okteto cloud, remove the URL parameter.


## Deploy the Application under test

    $ okteto pipeline deploy

The application can be accessed via the https endpoint displayed in the Okteto UI.

## Development Workflow

1. Launch your remote development environment by running the `okteto up` command: 
    
        $ okteto up --build
  
   The remote development environment is already configured with all the tools you need, and all your files will be synchronized between your local machine and the remote development environment. You can perform all your development tasks there, such as: build your application, redeploy the application, run your tests, etc...
  
1. Start the `FitNesse` server in the remote terminal: 
    
        root@hello-556fb8588-csglf:/usr/src/app# ./run-fitnesse.sh

    The `FitNesse` server is now available on http://localhost:8080. You can now proceed to run your own tests there.

1. At any time, you can run `./run-app.sh` to build and redeploy the application with your latest changes. You can also run `okteto push` from your local machine.

## Test Your Changes

Go to http://localhost:8080 and write and run your tests using FitNesse.