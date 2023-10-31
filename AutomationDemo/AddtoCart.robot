*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/config.robot
Library     DataDriver  ../Testdata/logindata1.xlsx    sheet_name=Sheet2

Suite Setup     config.Start Browser
Suite Teardown	config.Finish Browser
Test Template    Verifying add_to_cart with all scenarios

*** Test Cases ***
Verify_add_to_cart_functionality    ${username}     ${password}
    [Documentation]    These test cases verifies the AddtoCart scenarios
    [Tags]    Add to Cart products Functionality

*** Keywords ***
[Documentation]    add_to_cart Functionality with all scenarios
Verifying add_to_cart with all scenarios

    [Arguments]    ${username}    ${password}
    Input Text      ${txt_username}     ${username}
	Input Text      ${txt_password}     ${password}
	Click button	${click_login}
	sleep    10
	Capture Page Screenshot
	Title Should Be    Swag Labs

Add products to the Cart
    [Documentation]    Add product to the Cart
    #Page should contain    ${product_price}
    click button    ${add_to_cart_button}
    page should contain    Remove

Remove products from the cart
    [Documentation]    Remove Products From The Cart
    page should contain    Remove
    click button    ${(remove_item}

product image clickable and add another product to the cart
    [Documentation]    Add Another Product To The Cart
    ${click_product_img}
    ${add_item2_img}
    ${back_products}
#Wait Until Element Is Visible    Sauce Labs Onesie
#    click button    ${back_products}
#    click button    ${cart_click}
#    click button    ${continue_checkout}

