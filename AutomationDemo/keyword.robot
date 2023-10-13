*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
Open my browser
	open browser	https://www.saucedemo.com       chrome
	maximize browser window

Input username
	[Arguments]     ${username}
	input text      name:user-name      ${username}

Input password
	[Arguments]     ${password}
	input text		name:password       ${password}

click login button
	click element       xpath://input[@name='login-button]

Products page should be visible
    wait Until Page Contains        Swag Labs

click add_toCart
	click element       xpath://button[@name='add-to-cart-test.allthethings()-t-shirt-(red)']

click Cart
	click element       xpath://a[@class='shopping_cart_link']

click checkout
	click element       xpath://button[@name=çheckout']


Info page should be visible
    page should contain     Your Information

Input firstName
    [Arguments]     ${firstName}
	input text      name:firstName      ${firstName}


Input lastName
	[Arguments]     ${lastName}
	input text      name:lastName       ${lastName}

Input postalCode
	[Arguments]     ${postalCode}
	input text      name:postalCode     ${postalCode}

click continueCheckout
    click element       xpath://input[@name='continue']

click Finish_checkout
    click element       xpath://button[@name='finish']

Thank you page should be visible
	page should contain     Thank you for your order

close all browsers
	close browser
