*** Settings ***
Library    SeleniumLibrary
Library    Process

Resource    variables_fi.resource
Resource    variables_en.resource


*** Variables ***
${MENU_LINK_LOCATOR}    //a[contains(text(),'\${menu_item_name}')]


*** Keywords ***
Open homepage and accept cookies
    Open Browser    url=${homepage_url}    browser=chrome
    Accept Cookie dialog

Accept Cookie dialog
    Wait Until Element Is Visible    class:ch2-allow-all-btn
    Click Button    class:ch2-allow-all-btn

Click menu item named
    [Arguments]    ${menu_item_name}
    IF    '${menu_item_name}' != '${EMPTY}'
        ${locator}=  Replace variables  ${MENU_LINK_LOCATOR}
        Wait Until Element Is Visible    ${locator}    5s
        Click Element    ${locator}
        # tried to wait for the page loading but didn't work:
        #Wait For Condition    return document.readyState == "complete"
        #Wait For Condition    return jQuery.active == 0
    ELSE
        Log    Menu item variable is empty, not clicking
    END

Verify page title
    [Arguments]    ${title}
    IF    '${title}' != '${EMPTY}'
        Title Should Be    ${title}
    ELSE
        Log    Title variable is empty, not verifying it
    END
    
Verify page location
    [Arguments]    ${location}
    IF    '${location}' != '${EMPTY}'
        Wait Until Location Is    ${location}
    ELSE
        Log    Location variable is empty, not verifying it
    END

Verify page location and title
    [Arguments]    ${location}    ${title}
    Verify page location    ${location}
    Verify page title    ${title}

Open contact page
    Click element    //div[@aria-label='avaa yhteydenottolomake']
    Wait Until Element Is Visible    id:Yhteydenotto

Import language resorces
    [Arguments]    ${language}
    IF    '${language}' == 'fi' or '${language}' == 'en'
        Log To Console    Language variable value ${language}
        Import Resource    ${CURDIR}/../resources/variables_${language}.resource
    ELSE
        Fail    Language '${language}' is not supported. Webpage supports only 'fi' and 'en' languages.
    END

