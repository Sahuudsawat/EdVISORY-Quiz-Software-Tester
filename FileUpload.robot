*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                    https://the-internet.herokuapp.com/upload
${browser}                gc
${locator_selectfile}     name=file
${locator_upload}         id=file-submit    
${locator_drop}           id=drag-drop-upload
${locator_file_path}      C:/Users/Nice/Downloads/sahudsawat/Test.txt          


*** Keywords ***
Open Wed Browser
    Open Browser         ${url}        ${browser}
    Maximize Browser Window 

Input Upload File
    Choose File          ${locator_selectfile}    ${locator_file_path}  
    Click Element        ${locator_upload}  



*** Test Cases ***
TC01 Default Page
    Open Wed Browser
    Wait Until Page Contains         File Uploader 
    Wait Until Element Is Visible    ${locator_selectfile}
    Wait Until Element Is Visible    ${locator_upload}
    Wait Until Element Is Visible    ${locator_drop}  
    Close Browser

TC02 Upload File 
    Open Wed Browser
    Set Selenium Speed    0.5
    Input Upload File
    Close Browser

TC03 Upload Fail 
    Open Wed Browser
    Click Element    ${locator_upload}  
    Wait Until Page Contains    Internal Server Error  




    

    
