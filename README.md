# RobotFramework Example Tests

This repository contains sample tests I made using RobotFramework, both frontend e2e tests and api tests


# Installation

I used poetry as a virtual environment, for this reason, after cloning the repository, you should run the command 
`$ poetry install` in order to install all the necessary packages. 

## e2e_tests
This test suite contains tests of the basic functionalities of [testarena.pl](http://demo.testarena.pl/) using [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

To run the tests from the e2e_tests set, you need to use `$ poetry run robot e2e_tests`

## api_tests
This test suite contains tests of [Spoonacular API](https://spoonacular.com/) using [HTTP RequestsLibrary (Python)](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html)

In order to use this API, you need a apikey, which must be placed in api_tests/resources/secrets.robot. This file should look as follows 
```
*** Settings ***

Documentation  Files with secrets.

*** Variables ***

${apiKey}  value_of_your_apikey
```
To run the tests from the e2e_tests set, you need to use `$ poetry run robot api_tests`