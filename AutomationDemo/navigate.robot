*** Settings ***
Documentation     Navigate Back and Forth on Saucedemo.com
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.saucedemo.com
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Navigate Back and Forth
    [Documentation]    Navigate to the login page, add to cart, and return to the login page
    [Setup]    Open Browser    ${URL}    ${BROWSER}

    # Step 1: Navigate to the login page
    Go to Login Page

    # Step 2: Login, add products to the cart, and go to the cart
    Login and Add Products to Cart

    # Step 3: Navigate back to the login page
    Go to Login Page

    [Teardown]    Close Browser

*** Keywords ***
Go to Login Page
    [Documentation]    Navigate to the login page
    [Setup]    Open Browser    ${URL}    ${BROWSER}
    Click element    xpath://input[@class='submit-button btn_action']
    Wait Until Page Contains    Swag Labs

Login and Add Products to Cart
    [Documentation]    Login and add products to the cart
    Input Text    id:user-name    ${USERNAME}
    Input Password    id:password    ${PASSWORD}
    Click Button    xpath://input[@class='submit-button btn_action']
    Wait Until Page Contains    Products
    Click Element    //button[contains(text(), 'Add to cart')]
    Click Element    xpath://a[@class='shopping_cart_link']
    Wait Until Element Is Visible    xpath://button[@id='continue-shopping']
    