*** Settings ***
Library     SeleniumLibrary
Resource    ../Testdata/Smoke_xpath.robot

*** Variables ***

*** Keywords ***
Open my browser
	open browser	${url}    ${browser}
	maximize browser window

Input username
    [Arguments]    ${username}
    input text    ${txt_username}        ${username}

Input password
	[Arguments]    ${password}
	input text    ${txt_password}        ${password}

click login button
	click element        ${click_login}

Products page should be visible
    wait Until Page Contains        Swag Labs

click add_toCart
	click element        ${add_to_cart_button}

click Cart
	click element        ${cart_click}

click checkout
	click element        ${click_checkout}


Info page should be visible
    page should contain        Your Information

Input firstName
    [Arguments]    ${firstName}
	input text    name:firstName        ${firstName}

Input lastName
	[Arguments]    ${lastName}
	input text    name:lastName        ${lastName}

Input postalCode
	[Arguments]    ${postalCode}
	input text    name:postalCode        ${postalCode}

click continueCheckout
    click element        ${continue_checkout}

click Finish_checkout
    click element        ${finish_checkout}

Thank you page should be visible
	page should contain    Thank you for your order

close all browsers
	close browser