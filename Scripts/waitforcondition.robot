*** Settings ***

Documentation  Login Functionality
Library  SeleniumLibrary

Suite Teardown    Suite shutdown

*** Variables ***

${Browser}  Chrome
${url}  https://google.com/

*** Test Cases ***


Verify Google Application

    [documentation]  Verify Google Application
    [tags]  Smoke
    Open Browser  ${url}  ${Browser}
    Maximize Browser Window
    Wait For Condition	return document.title == "Google"

*** Keywords ***

Suite shutdown
    Close All Browsers
