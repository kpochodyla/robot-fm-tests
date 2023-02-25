*** Settings ***
Documentation    File containing global variables with their values used in test cases. 
Resource    secrets.robot
*** Variables ***
# Values
${BASE_URL}    https://api.spoonacular.com/recipes
&{DEFAULT_HEADERS} =    Content-Type=application/json
&{DEFAULT_PARAMS} =    apiKey=${apiKey}
