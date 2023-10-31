*** Settings ***
Library     SeleniumLibrary
Resource    ../AutomationDemo/cartKeywords.robot
Library     DataDriver  ../Testdata/logindata.xlsx    sheet_name=Sheet1

Suite Setup     Open my browser
Suite Teardown  close all browsers
Test Template   Valid Login

*** Variables ***

*** Test Cases ***
LoginTestwithExcel using     ${username}    ${password}    ${firstName}    ${lastName}    ${postalCode}

*** Keywords ***
Valid Login
    [Arguments]    ${username}    ${password}    ${firstName}    ${lastName}    ${postalCode}
	Input username    ${username}
	sleep   5
	Input password    ${password}
	sleep	5
	capture page screenshot
	click login button
	Products page should be visible

	click add_toCart
	sleep	5
	click Cart
	sleep	5
	click checkout
	sleep	5
	capture page screenshot
	info page should be visible

	Input firstName    ${firstName}
	sleep	5
	Input lastName    ${lastName}
	sleep	5
	Input postalCode    ${postalCode}
	sleep	5
	click continueCheckout
	sleep	5
	capture page screenshot

	click Finish_checkout
	capture page screenshot

	close all browsers