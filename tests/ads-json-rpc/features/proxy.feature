Feature: Proxy with mock ads client

  Scenario: Call broadcast method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "broadcast",
          "params": {
              "message": "01020304050607080900"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call change_account_key method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "change_account_key",
          "params": {
              "public_key": "860BB97F2E355C094CEFB63A7A1245C3D3073E535087FBACEF573C6EC48E17A9",
              "confirm": "BE3B9AB24AEDC0B7DB99DB32CF62FDC1E6F19829401DAA74156A341B80F9406F369EC87690466C08924811ECE19752A18FA59D93B1364C67C5D76E2CE6942500"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call change_node_key method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "change_node_key",
          "params": {
              "public_key": "2D1FC97FA56B785E0FDAE5752DE613BAD7FBBB5EBBB46DAEE5DBFA822F976B63"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call change_node_key method with node
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "change_node_key",
          "params": {
              "public_key": "2D1FC97FA56B785E0FDAE5752DE613BAD7FBBB5EBBB46DAEE5DBFA822F976B63",
              "node": 16
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call create_account method without params
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_account",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call create_account method with public key
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_account",
          "params": {
              "public_key": "860BB97F2E355C094CEFB63A7A1245C3D3073E535087FBACEF573C6EC48E17A9",
              "confirm": "BE3B9AB24AEDC0B7DB99DB32CF62FDC1E6F19829401DAA74156A341B80F9406F369EC87690466C08924811ECE19752A18FA59D93B1364C67C5D76E2CE6942500"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call create_account method with node
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_account",
          "params": {
              "node": 16
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call create_account method with public key and node
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_account",
          "params": {
              "public_key": "860BB97F2E355C094CEFB63A7A1245C3D3073E535087FBACEF573C6EC48E17A9",
              "confirm": "BE3B9AB24AEDC0B7DB99DB32CF62FDC1E6F19829401DAA74156A341B80F9406F369EC87690466C08924811ECE19752A18FA59D93B1364C67C5D76E2CE6942500",
              "node": 16
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call create_node method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_node",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

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

  Scenario: Call log_account method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "log_account",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call send_many method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "send_many",
          "params": {
              "wires": {
                  "0005-00000009-8340": "10000000.00000000078",
                  "0001-00000000-9B6F": "10000000.00000000001"
              }
          }
      }
      """
      Then response will have method and params formatted as ads request

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

