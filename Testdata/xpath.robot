*** Variables ***
#Xpath for the Login
${url}      https://www.saucedemo.com
${browser}  chrome

# Locators
${txt_username}  id:user-name
${txt_password}  id:password
${click_login}  xpath://input[@class='submit-button btn_action']
${txt_errormsg}  xpath://div[@id='login_button_container']//h3
