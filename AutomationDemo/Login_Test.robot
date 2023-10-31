*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../Resources/config.robot
Resource    ../AutomationDemo/validLogin.robot
Variables    ../variables/getExcelVariables.py

#Library     DataDriver  ../Testdata/logindata1.xlsx    sheet_name=Sheet1

Suite Setup     config.Start Browser
Suite Teardown	config.Finish Browser

*** Test Cases ***
Test Case 1: Verifying Login Fails with Valid details
    [Documentation]    These test cases verifies the Valid login scenarios
    [Tags]    Login Functionality
    Enter UserName    ${username_val}
	Enter Password    ${password_val}
	Click on Login button
    Sleep    2
    Title Should Be    Swag Labs
    Capture Page Screenshot

