*** Settings ***
Library     AppiumLibrary

Resource    steps.robot

*** Keywords ***
Abrir App
    Open Application    http://localhost:4723/wd/hub
     ...                 automationName=UIAutomator2
     ...                 platformName=Android
     ...                 deviceName=Pixel
     ...                 app=${EXECDIR}/app/nuclone.apk
     ...                 udid=emulator-5554

    Wait Until Element Is Visible   accessibility_id=card-hero  10

Fechar App
    Capture Page Screenshot
    Close Application