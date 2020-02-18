*** Settings ***
Library     SeleniumLibrary
Resource    page_objects/login_page.robot
Resource    configuration/config.robot
Resource    page_objects/container_start_page.robot
Resource    base_test/base_test.robot
Resource    page_objects/home_page.robot

Suite Setup  Before Suite
Test Setup  Before Test
Test Teardown  After Test


*** Test Cases ***
1. Verify smth
    [Tags]  Positive
    Given I logged in MFGPortal as  CamstarAdmin
    When I open menu Container | Start
    And I populate form with  ContainerName     123

2. Verify Login 2
    [Tags]  Positive
    Given I logged in MFGPortal as  CamstarAdmin

3. Verify Login 3
    [Tags]  Positive
    Given I logged in MFGPortal as  CamstarAdmin
