*** Settings ***
Library    AppiumLibrary
Library    DataDriver    ../Resource/user.csv    dialect=excel    encoding=utf-8
Resource    ../Resource/appDietPages.robot
Variables    ../Resource/locator.yaml
Suite Setup    Start Session Application
Suite Teardown    Close Session Application
Test Template    Input user data

*** Keywords ***
Input user data
    [Arguments]    ${username}    ${height}    ${weight}
    Log    Username: ${username}, Height: ${height}, Weight: ${weight}
    Open Session App
    Input Text    ${etName}    ${username}
    Input Text    ${etWeight}    ${weight}
    Input Text    ${etHeight}    ${height}
    Tap    ${rbMale}
    User Tap Next Button
    Navigation Back

*** Test Cases ***    USERNAME     HEIGHT     WEIGHT
Input user data    ${username}    ${height}    ${weight}