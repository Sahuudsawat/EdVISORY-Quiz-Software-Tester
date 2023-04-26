*** Settings ***
Library    SeleniumLibrary
Documentation    

*** Variables ***
${url}                    https://the-internet.herokuapp.com/windows
${browser}                gc
${locator_ClickHere}      xpath://*[@id="content"]/div/a



*** Keywords ***
Open Wed Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Open New Window
    Click Element    ${locator_ClickHere}
    Switch Window    NEW
    Wait Until Page Contains    New Window
        
         

*** Test Cases ***
TC01 Default Page
    Open Wed Browser
    Wait Until Page Contains    Opening a new window
    Wait Until Element Is Visible    ${locator_ClickHere}    4  
    Close Browser

TC02 Opening a new window
    Open Wed Browser
    Open New Window  
    Close Browser
    