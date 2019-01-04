Feature: Proxy with mock ads client

  Scenario: Call get_account method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_account",
          "params": {
              "address": "0005-00000009-8340"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_account method without params
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_account",
          "params": {
          }
      }
      """
      Then response will have an error "InvalidParamsError"

  Scenario: Call send_one method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "send_one",
          "params": {
              "address": "0005-00000009-8340",
              "amount": "10000000.00000000079"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call send_one method with message
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "send_one",
          "params": {
              "address": "0005-00000009-8340",
              "amount": "1.0005",
              "message": "000000000000000000000000000000000000005445414d204144534841524553"
          }
      }
      """
      Then response will have method and params formatted as ads request

