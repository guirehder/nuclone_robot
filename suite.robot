*** Settings ***
Resource    resources/base.robot

Test Setup  Abrir App
Test Teardown   Fechar App

*** Test Cases ***
Ver meu saldo
    Mostra Saldo
    Meu saldo deve ser de   R$ 5.500,00


