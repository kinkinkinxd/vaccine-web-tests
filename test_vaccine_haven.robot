*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${HOMEPAGE}   https://vaccine-haven.herokuapp.com/ 
${BROWSER}    Chrome
${CITIZEN_ID}  9621054638222
${SITE}  OGYHSite
${VACCINE}  Pfizer

*** Test Cases ***	
Test if homepage contain logo and title on the middle page
  Go to homepage
  Page Should contain Element  //*[@id="nav__home__link"]/img
  Page Should contain Element  //*[@id="splash-img"]/div/div/h1
Test create reservation and verify information
  Create reservation
  Go to homepage
  Click link  link=My Info
  Input Text  name:citizen_id  ${CITIZEN_ID}
  Click Button   Submit
  Wait Until Page Contains    User information:
  Page Should Contain  ${SITE}
  Page Should Contain  ${VACCINE}
Test cancel reservation
  Cancel The Reservation

*** Keywords ***
Go to homepage
  Open Browser   ${HOMEPAGE}     ${BROWSER}
Create reservation
  Click Button  xpath:/html/body/div[2]/div/div[2]/section[2]/div/div/div/div/div[2]/a/button
  Input Text  name:citizen_id  ${CITIZEN_ID}
  Click Element  xpath=//select[@name="site_name"]
  wait until element is visible   xpath=//option[contains(text(),'${SITE}')]
  Click Element  xpath=//option[@value="OGYHSite"]
  Click Element  xpath=//select[@name="vaccine_name"]
  wait until element is visible   xpath=//option[contains(text(),'${VACCINE}')]
  Click Element  xpath=//option[@value="Pfizer"]
  Click Button   Submit
Cancel The Reservation
  Click Button  Cancel