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
   Click menu item named       ${menuitem_services}
   #Location Should Be   https://q-factory.fi/palvelut/
   Verify page title           ${title_services}

   Click menu item named       ${menuitem_customers}
   #Location Should Be   https://q-factory.fi/asiakkaat/
   Verify page title           ${title_customers}

   Click menu item named       ${menuitem_career}
   #Location Should Be  https://q-factory.fi/toihin/
   Verify page title           ${title_career}

   Click menu item named       ${menuitem_news}
   Verify page title           ${title_news}

   Click menu item named       ${menuitem_company}
   Verify page title           ${title_company}

   Open contact form



