
*** Variables ***
${CONTAINER_NAME_TB}        ctl00_WebPartManager_StartPage_DetailsWP_Details_ContainerName_ctl00
${LEVEL_PL}                 ctl00_WebPartManager_StartPage_DetailsWP_Details_Level
${OWNER_PL}                 ctl00_WebPartManager_StartPage_DetailsWP_Details_Owner
${START_REASON_PL}          ctl00_WebPartManager_StartPage_DetailsWP_Details_StartReason
${MFG_ORDER_PL}             ctl00_WebPartManager_StartPage_DetailsWP_Details_MfgOrder
${PRODUCT_RPL}              ctl00_WebPartManager_StartPage_DetailsWP_Details_Product
${WORKFLOW_PR}              ctl00_WebPartManager_StartPage_DetailsWP_CurrentStatusDetails_Workflow
${PRIOROTY_CODE_PL}         ctl00_WebPartManager_StartPage_DetailsWP_Details_PriorityCode

${SUBMIT_BTN}               //div[text()='Submit']



*** Keywords ***
I populate form with
    [Arguments]     ${label}    ${value}
    INPUT TEXT  ${CONTAINER_NAME_TB}    ${value}
    #input text      css:input[id*='ctl00_WebPartManager_StartPage_DetailsWP'][id~='${label}']    ${value}


Find element by label
    [Arguments]  ${label}