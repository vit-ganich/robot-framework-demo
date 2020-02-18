*** Variables ***
# Sidebar
${CONTAINER_MENU}   //div[@class='aw-commands-wrapper']/descendant::button[@id='Container']
${CONTAINER_START_MENU}     //div[@class='aw-ui-treeNode-valueContainer']/descendant::a[@title='Start']
${CONTAINER_OPER_VIEW}      //div[@class='aw-ui-treeNode-valueContainer']/descendant::a[@title='Operational View']
${MORE_BTN}     css:button[title='More...']
${LESS_BTN}     css:button[title='Less...']

*** Keywords ***
I open menu Container | Start
    Expand More Menu If Needed
    click element  ${CONTAINER_MENU}

    wait until element is enabled  ${CONTAINER_START_MENU}
    click element  ${CONTAINER_START_MENU}
    switch to tab frame

Expand More Menu If Needed
    ${present}=     run keyword and return status  element should be visible  ${MORE_BTN}
    run keyword if  ${present}  click element  ${MORE_BTN}

Switch to tab frame
    unselect frame
    select frame  css:iframe[name*='apollo']
    select frame  css:iframe[id*='tabfr_']
