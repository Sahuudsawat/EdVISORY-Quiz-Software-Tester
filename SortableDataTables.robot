*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}                         https://the-internet.herokuapp.com/tables
${browser}                     gc
${locator_last_nameup}         xpath://*[@id="table1"]/thead/tr/th[1]/span
${locator_class_last_name}     class=last-name
${locator_first_name}          xpath://*[@id="table1"]/thead/tr/th[2]/span
${locator_class_first_name}    class=first-name        
${locator_email}               xpath://*[@id="table1"]/thead/tr/th[3]/span
${locator_class_email}         class=email
${locator_due}                 xpath://*[@id="table1"]/thead/tr/th[4]/span
${locator_class_due}           class=dues
${locator_web_site}            xpath://*[@id="table1"]/thead/tr/th[5]/span
${locator_class_web_site}      class=web-site

*** Keywords ***
Open Wed Brower
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Verify Columns
    [Arguments]            ${locator}         ${data}   
    ${txt}=    Get Text    ${locator}           
    Should Be Equal        ${txt}             ${data}


*** Test Cases ***

TC01 Default Page Example 1
    Open Wed Brower
    Wait Until Page Contains    Data Tables
    Close Browser

TC02 Lastname Example 1
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element    ${locator_last_nameup}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[1]     Bach 
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[1]     Conway             
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[1]     Doe   
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[1]     Smith
    Click Element    ${locator_last_nameup} 
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[1]     Smith
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[1]     Doe              
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[1]     Conway     
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[1]     Bach
    Close Browser
    
TC03 FirstName Example 1
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element     ${locator_first_name}    
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[2]     Frank  
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[2]     Jason             
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[2]     John   
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[2]     Tim
    Click Element     ${locator_first_name} 
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[2]     Tim
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[2]     John              
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[2]     Jason      
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[2]     Frank
    Close Browser
    
TC04 Email Example 1
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element    ${locator_email}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[3]     fbach@yahoo.com    
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[3]     jdoe@hotmail.com             
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[3]     jsmith@gmail.com   
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[3]     tconway@earthlink.net
    Click Element    ${locator_email}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[3]     tconway@earthlink.net  
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[3]     jsmith@gmail.com              
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[3]     jdoe@hotmail.com     
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[3]     fbach@yahoo.com
    Close Browser

TC05 Due Example 1
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element    ${locator_due}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[4]     $50.00   
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[4]     $50.00             
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[4]     $51.00   
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[4]     $100.00
    Click Element    ${locator_due}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[4]     $100.00  
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[4]     $51.00              
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[4]     $50.00     
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[4]     $50.00 
    Close Browser

TC06 WebSite Example 1
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element    ${locator_web_site}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[5]     http://www.frank.com    
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[5]     http://www.jdoe.com              
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[5]     http://www.jsmith.com    
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[5]     http://www.timconway.com
    Click Element    ${locator_web_site}
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[1]/td[5]     http://www.timconway.com   
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[2]/td[5]     http://www.jsmith.com              
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[3]/td[5]     http://www.jdoe.com     
    Verify Columns    xpath://*[@id="table1"]/tbody/tr[4]/td[5]     http://www.frank.com 
    Close Browser

TC01 Lastname Example 2
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element     ${locator_class_last_name}
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[1]     Bach 
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[1]     Conway             
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[1]     Doe   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[1]     Smith
    Click Element     ${locator_class_last_name} 
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[1]     Smith
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[1]     Doe              
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[1]     Conway     
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[1]     Bach
    Close Browser
    
TC02 FirstName Example 2
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element     ${locator_class_first_name}   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[2]     Frank  
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[2]     Jason             
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[2]     John   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[2]     Tim
    Click Element     ${locator_class_first_name}   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[2]     Tim
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[2]     John              
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[2]     Jason      
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[2]     Frank
    Close Browser
    
TC03 Email Example 2
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element     ${locator_class_email}
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[3]     fbach@yahoo.com    
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[3]     jdoe@hotmail.com             
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[3]     jsmith@gmail.com   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[3]     tconway@earthlink.net
    Click Element     ${locator_class_email}
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[3]     tconway@earthlink.net  
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[3]     jsmith@gmail.com              
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[3]     jdoe@hotmail.com     
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[3]     fbach@yahoo.com
    Close Browser

 TC04 Due Example 2
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element     ${locator_class_due}
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[4]     $50.00   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[4]     $50.00             
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[4]     $51.00   
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[4]     $100.00
    Click Element     ${locator_class_due}
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[1]/td[4]     $100.00  
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[2]/td[4]     $51.00              
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[3]/td[4]     $50.00     
    Verify Columns    xpath://*[@id="table2"]/tbody/tr[4]/td[4]     $50.00 
    Close Browser

TC05 WebSite Example 2
    Open Wed Brower
    #Set Selenium Speed    0.5
    Click Element      ${locator_class_web_site}
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[1]/td[5]     http://www.frank.com    
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[2]/td[5]     http://www.jdoe.com              
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[3]/td[5]     http://www.jsmith.com    
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[4]/td[5]     http://www.timconway.com
    Click Element      ${locator_class_web_site}
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[1]/td[5]     http://www.timconway.com   
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[2]/td[5]     http://www.jsmith.com              
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[3]/td[5]     http://www.jdoe.com     
    Verify Columns     xpath://*[@id="table2"]/tbody/tr[4]/td[5]     http://www.frank.com 
    Close Browser