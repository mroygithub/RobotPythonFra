*** Settings ***

Documentation  Login Functionality
Library  SeleniumLibrary

Suite Teardown    Suite shutdown

*** Variables ***

${Browser}  Chrome
${url}  https://infyni.com/login/

*** Test Cases ***


Verify Google Application

    [documentation]  Verify Google Application
    [tags]  Smoke
    Open Browser  ${url}  ${Browser}
    Maximize Browser Window
    Log Title
    #Title Should Be  Find the Best Online Classes Taught by Expert Trainers | Online courses provider |  Learn From Industry Experts | Online Learning | Live Classes | infyni
    Checkbox Should Not Be Selected  xpath://input[@name='RememberMe']
    #Input Text  xpath://input[@name='q']  TEST@12345
    #Click Element  xpath:(//input[@name='btnK'])[2]
    Execute Javascript  window.open()
    Switch Window	locator=NEW
    Go To	https://robocon.io
    Close Window
    sleep  5
    #Close Browser




*** Keywords ***

Suite shutdown
    Close All Browsers
