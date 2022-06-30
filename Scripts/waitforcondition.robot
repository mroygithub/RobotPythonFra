*** Settings ***

Documentation  Login Functionality
Library  SeleniumLibrary

Suite Teardown    Suite shutdown

*** Variables ***

${Browser}  Chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***


Verify Google Application

    [documentation]  Verify Google Application
    [tags]  CAT
    Open Browser  ${url}  ${Browser}
    Maximize Browser Window
    ${rows}=  get element count     xpath://table[@name='BookTable']/tbody/tr
    log to console  ${rows}
    ${cols}=  get element count     xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console  ${cols}

    ${dataRead}=    get text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    log to console  ${dataRead}

    #column  #Testing5
    table column should contain     xpath://table[@name='BookTable']    4       3000

    #row
    table row should contain     xpath://table[@name='BookTable']    5       Master In Selenium

    #cell
    table cell should contain     xpath://table[@name='BookTable']    3     2       Mukesh

    #header
    table header should contain     xpath://table[@name='BookTable']    Subject


*** Keywords ***

Suite shutdown
    Close All Browsers
