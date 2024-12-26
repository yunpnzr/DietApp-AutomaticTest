*** Settings ***
Library    AppiumLibrary
Resource    ../Resource/appDietPages.robot
Variables    ../Resource/locator.yaml
Suite Setup    Start Session Application
Suite Teardown    Close Session Application

*** Test Cases ***
As user I want to open app 
    Sleep    5
    Page Should Contain Text    Welcome

As user I want to input data 
    User Input Welcome Data Male
    User Tap Next Button