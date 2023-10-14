*** Settings ***
Library     SeleniumLibrary
Resource    ../Testdata/xpath.robot


*** Keywords ***
Start Browser
	Open browser    ${url}  ${browser}
	Maximize Browser Window
	sleep 	5

Finish browser
	Close Browser
