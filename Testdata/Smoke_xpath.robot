*** Variables ***
#Xpath for the Login
${url}      https://www.saucedemo.com
${browser}  chrome

#Locators
${txt_username}     id:user-name
${txt_password}     id:password
${click_login}      xpath://input[@class='submit-button btn_action']
${txt_error msg}     xpath://div[@id='login_button_container']//h3

#${product_sort_container}    xpath://select[@class='product_sort_container']
#${Name A-Z}    xpath://Name (A to Z)
#${product_name}    //div[@class='inventory_item_name']

${product_price}   xpath://div[@class='inventory_item_price']
${add_to_cart_button}    xpath://button[@name='add-to-cart-test.allthethings()-t-shirt-(red)']
${(remove_item}    xpath://button[@name='remove-test.allthethings()-t-shirt-(red)']
${add_to_Cart_another}    xpath://button[@name='add-to-cart-sauce-labs-onesie']']
${click_product_img}    xpath://a[@id='item_2_img_link']
${add_item2_img}    xpath://button[@id='add-to-cart-sauce-labs-onesie']
${back_products}    xpath://button[@id='back-to-products']
${cart_click}    xpath://a[@class='shopping_cart_link']
${click_checkout}    xpath://button[@name='checkout']
${firstname}    id:first-name
${lastname}    id:last-name
${postalcode}    id:postal-code

#${firstname}    name:firstName
#${lastname}    name:lastName
#${postalcode}    name:postalCode
${continue_checkout}    xpath://input[@name='continue']
${finish_checkout}    xpath://button[@name='finish']

#Shopping Cart Page Elements:

${Cart_item}    //div[@class='cart_item']
${Cart_item_name}    //div[@class='cart_item_label']//div[@class='inventory_item_name']
${Cart item price}    //div[@class='cart_item_label']//div[@class='inventory_item_price']
${Remove_Cart}    //button[contains(text(), 'REMOVE')]

#Checkout Page Elements:

#Order Confirmation Page Elements:
${Thank_You_msg}    //h2[contains(text(), 'THANK YOU')]
${Order_summary}    //div[@class='summary_info']

#Error Messages:
#Generic error message: //h3[contains(text(), 'Epic sadface')]
#Out-of-stock product error: //h3[contains(text(), 'Sorry, this product is out of stock')]

#Sorting Dropdown:
${Sorting_dropdown}    //select[@class='product_sort_container']