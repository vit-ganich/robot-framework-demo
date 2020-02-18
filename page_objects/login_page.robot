*** Settings ***
Library     libraries/custom_lib.py     WITH NAME   CustomLib
Resource    configuration/config.robot

*** Variables ***
${USER_NAME_TXT}    //div[@class='aw-widgets-propertyContainer ng-scope ng-isolate-scope']//aw-property-text-box-val[@class='ng-isolate-scope']//input[@type='text']
${PASSWORD_TXT}     //div[@class='aw-widgets-propertyContainer ng-isolate-scope']//input[@type='password']
${DOMAIN_TXT}       //input[contains(@class,'gwt-ListBox')]
${LOG_ON_BTN}   //button[@class='aw-base-blk-button ng-scope ng-isolate-scope']

*** Keywords ***
I logged in MFGPortal as
    [Arguments]  ${user_name}
    Input Text  ${USER_NAME_TXT}    ${user_name}
    Input Text  ${PASSWORD_TXT}     ${PASSWORD}
    Input Text  ${DOMAIN_TXT}       ${DOMAIN}
    Click Button    ${LOG_ON_BTN}
    Wait for condition  return document.readyState === 'complete'
    CustomLib.Do Nothing  Hello World
