*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/Keywords_Interface/Open_Close_App.robot
Resource    ../Resources/Keywords_Interface/Add_New_Child_Interface.robot
Suite Setup    Login Into Nannacara
Suite Teardown    Close App
*** Variables ***
${Username}    hiephiep0407@gmail.com
${Password}    hiephiep123@H
*** Test Cases ***
Verify That User Can Open Add New Child Page Successfully
    Login Into Nannacara