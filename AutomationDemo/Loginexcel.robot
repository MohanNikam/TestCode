*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/config.robot
Library     DataDriver  ../Testdata/logindata1.xlsx sheet_name=Sheet1

Suite Setup     config.Start Browser
Suite Teardown	config.Finish Browser
Test Template	Login scenarios

*** Test Cases ***
Verify Login with different scenarios   ${txt_username}     ${txt_password}     ${txt_errormsg}

*** Keywords ***
Login scenarios
	[Arguments]     ${username1}     ${password1}     ${error_msg}
	Input Text      ${txt_username}     ${username1}
	Input Text      ${txt_password}     ${password1}
	Click button	${click_login}
	Sleep	10
	Element Should Contain      ${txt_errormsg}     ${error_msg}
