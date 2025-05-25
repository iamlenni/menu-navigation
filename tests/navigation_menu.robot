*** Settings ***
Resource          ../Resources/Keywords.robot
Test Setup      Import language resorces    ${LANGUAGE}
Test Teardown   Close Browser


*** Variables ***
#default webpage language set to Finnish
${LANGUAGE}     fi


*** Test Cases ***
Verify Top Page Navigation links
   Open homepage and accept cookies
   Click menu item named            ${menuitem_services}
   Verify page location and title    ${url_services}    ${title_services}

   Click menu item named            ${menuitem_customers}
   Verify page location and title    ${url_customers}    ${title_customers}

   Click menu item named            ${menuitem_career}
   Verify page location and title    ${url_career}    ${title_career}

   Click menu item named            ${menuitem_news}
   Verify page location and title    ${url_news}    ${title_news}

   Click menu item named            ${menuitem_company}
   Verify page location and title    ${url_company}    ${title_company}

   Open contact page



