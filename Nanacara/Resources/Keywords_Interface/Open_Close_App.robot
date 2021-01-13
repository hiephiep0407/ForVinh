*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/Information/AccountUser.robot
*** Variables ***
${Intro-App-Login-Button}    //android.widget.TextView[@text='ログイン']
${Login-Page-Username-Textbox}    //android.widget.EditText[@text='登録メールアドレスまたは電話番号']
${Login-Page-Password-Textbox}     //android.widget.EditText[@text='パスワード']
${Login-Signin-Button}    //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text='ログイン']
${Menu-Page-Popup-Allow-Button}    //android.widget.Button[@text='ALLOW']

*** Keywords ***
Login Into Nannacara
    open application    http://localhost:4723/wd/hub    platformName=Android    deviceName='Android Emulator'    app=D:\Nanacara.apk
    wait until page contains element    ${Intro-App-Login-Button}    timeout=10s
    click element    ${Intro-App-Login-Button}
    wait until page contains element    ${Login-Page-Username-Textbox}    timeout=10s
    input text    ${Login-Page-Password-Field}    ${Password}
    wait until page contains element    ${Login-Page-Password-Textbox}     timeout=10s
    input text    ${Login-Page-Password-Field}    ${Password}
    wait until page contains element    ${Login-Signin-Button}     timeout=10s
    click element   ${Login-Signin-Button}
    wait until page contains element    ${Menu-Page-Popup-Allow-Button}    timeout=10s
    click element    ${Menu-Page-Popup-Allow-Button}
    wait until page contains element    ${Menu-Page-Popup-Allow-Button}    timeout=10s
    click element    ${Menu-Page-Popup-Allow-Button}


Close App
    close application
