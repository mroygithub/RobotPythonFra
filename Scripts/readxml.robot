*** Settings ***

Library  SeleniumLibrary
Library  Action1.py
Library  ../Support/Action.py


*** Variables ***

${UserNameHRM}  Admin   #Scalar
${PasswordHRM}  admin123    #Scalar
@{CredentialsTheInternetHerokuApp}  tomsmith  SuperSecretPassword!  #List
&{VisibleElements}  OrangeHRM=id:welcome  InternetHerokuApp=css:[href="/logout"]  #Dictionary

*** Test Cases ***



Read XML File

    ${value}=   Action1.Add_two_numbers  ${1}
    Log to console  ${value}

    ${value}=   Action1.read_xml  password
    Log to console  ${value}


    ${value}=   Action.read_xml  password
    Log to console  ${value}









*** Keywords ***


