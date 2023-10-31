*** Settings ***
Documentation    An Example Resource File
Library        SeleninumLibrary
Resource        ../Resources/config.robot
*** Keywords ***
Enter UserName
	[Arguments]     ${username1_val}
	Input Text      ${txt_username}     ${username1_val}

Enter Password
    [Arguments]     ${password1_val}
	Input Text      ${txt_password}     ${password1_val}

Click on Login button
	Click button	${click_login}

#Element Should Contain      ${txt_error msg}     ${error_msg}
