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
   Verify page title and location    ${title_services}    ${url_services}

   Click menu item named            ${menuitem_customers}
   Verify page title and location    ${title_customers}    ${url_customers}

   Click menu item named            ${menuitem_career}
   Verify page title and location    ${title_career}    ${url_career}

   Click menu item named            ${menuitem_news}
   Verify page title and location    ${title_news}    ${url_news}

   Click menu item named            ${menuitem_company}
   Verify page title and location    ${title_company}    ${url_company}

   Open contact page



