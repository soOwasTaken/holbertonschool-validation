# Deployment Guide

This document provides instructions on deploying and managing the application.

## Contents of the Archive

The archive file contains the following items:

    awesome-website.zip: The deployment package that includes
     the awesome-api binary and the dist/ directory.

## Unarchiving the Package

To unarchive the package, follow these steps:

    Place the awesome-website.zip file in the desired location on the
    deployment server

    Open a terminal and navigate to the directory where the package is located.

    Run the following command to unzip the archive:

    unzip awesome-website.zip

    This will extract the awesome-api binary and the dist/ directory.

## Starting and Stopping the Application

To start the application, follow these steps:

    Navigate to the directory where the awesome-api binary is located.

    Run the following command to start the application:
    ./awesome-api
    The application will start and listen on the specified port.

To stop the application, you can use the following methods:

    Press Ctrl + C in the terminal where the application is running.
    Send a termination signal to the process.

## Customizing Application Logs

By default, the application logs are written to the standard output (stdout).
However, you can customize the location where the logs
are written by modifying the application's configuration.

To customize the log output:

    Locate the configuration file for the application.
    This file is typically named config.yaml or application.conf.
    Open the configuration file in a text editor.
    Look for the log-related configuration options,
    which may include the log file path, log level,
    or log rotation settings.
    Modify the configuration according to your requirements,
    specifying the desired log file path.
    Save the configuration file.

After making the changes,
restart the application for the new log configuration to take effect.

## Verifying Application Healthcheck

To quickly verify that the application is running and healthy
you can perform a healthcheck by making an HTTP request
to the application's healthcheck endpoint.

The healthcheck endpoint URL depends on your application's configuration.
Typically, it is /health or /status.
Use the following command to make a GET
request to the healthcheck endpoint:

curl "http://localhost:8080/health"

Replace "http://localhost:8080" with the actual URL and
port where the application is running.

A successful response (HTTP status code 200) indicates
that the application is running correctly.

You can incorporate this healthcheck command into your deployment
scripts or monitoring systems to ensure the application's availability.
