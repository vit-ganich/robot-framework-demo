*** Settings ***
Library     SeleniumLibrary  run_on_failure=Capture Page Screenshot
Library     DateTime
Resource    configuration/config.robot


*** Keywords ***
Before Test
    set selenium implicit wait  5
    Open Browser    ${Portal_URL}  ${BROWSER}   maximize browser window
    Maximize Browser Window
    Wait until page contains    Log In

After Test
    Run Keyword If  'Positive' in @{TEST TAGS}    Capture Page Screenshot     ${TEST_NAME}_{index}.png
    close all browsers

Before Suite
   ${timestamp} =   Get Current Date    result_format=${TIMESTAMP_FORMAT}
   Set Screenshot Directory    ${OUTPUT_DIR}/screenshots/${timestamp} ${SUITE_NAME}/
