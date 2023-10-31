*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/config.robot
Library     DataDriver  ../Testdata/logindata1.xlsx    sheet_name=Sheet1

Suite Setup     config.Start Browser
Suite Teardown	config.Finish Browser
Test Template    Verifying Login Fails With Invalid Details

*** Test Cases ***
Verify_Login_with_different_scenarios    ${username}     ${password}     ${error_msg}
    [Documentation]    These test cases verifies the invlaid login scenarios
    [Tags]    Login Functionality

*** Keywords ***
[Documentation]    Login Functionality with negative scenarios
Verifying Login Fails with invalid details
	[Arguments]    ${username}     ${password}     ${error_msg}
	Input Text      ${txt_username}     ${username}
	Input Text      ${txt_password}     ${password}
	Click button	${click_login}
	Sleep	10
	Element Should Contain      ${txt_error msg}     ${error_msg}
	Capture Page Screenshot
    Title Should Be    Swag Labs
    Capture Page Screenshot