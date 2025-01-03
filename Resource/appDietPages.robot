*** Settings ***
Library    AppiumLibrary
Variables    ../Resource/locator.yaml

*** Variables ***
${screenshot_counter}    1

*** Keywords ***
Start Session Application
    Set Appium Timeout    5
    Open Application    http://localhost:4723/wd/hub
    ...    platformName=Android
    ...    platformVersion=11.0
    ...    deviceName=UwU
    ...    automationName=UiAutomator2
    ...    appPackage=com.fghilmany.dietmealapp
    ...    appActivity=com.fghilmany.dietmealapp.ui.main.MainActivity
    ...    noReset=true
    ...    autoGrantPermission=true
    Sleep    1

Open Session App
    Sleep    5
    Page Should Contain Text    Welcome

User Tap Next Button
    Tap    ${btnNext}

Navigation Back
    Press Keycode    4
    Page Should Contain Text    Welcome

Close Session Application
    #Capture Page Screenshot    ${OUTPUT_DIR}/Result/result_documentation_${screenshot_counter}.png
    #${screenshot_counter}    evaluate    ${screenshot_counter} + 1  
    Capture Page Screenshot    ${OUTPUT_DIR}/Result/result_documentation.png
    Sleep    3
    Close Application

#*** Test Cases ***