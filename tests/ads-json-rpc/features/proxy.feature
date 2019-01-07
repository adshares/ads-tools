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

  Scenario: Call get_accounts method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_accounts",
          "params": {
          	  "node": 1
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_accounts method with block id
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_accounts",
          "params": {
          	  "node": 1,
          	  "block": "5C330200"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_block method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_block",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_block method with block id
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_block",
          "params": {
              "block": "5C331A00"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_blocks method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_blocks",
          "params": {
          }
      }
      """
      Then response will have an error "MethodNotFoundError"

  Scenario: Call get_broadcast method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_broadcast",
          "params": {
              "from": "5C330200"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_log method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_log",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_log method with from param
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_log",
          "params": {
              "from": 1546850578
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_me method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_me",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_message method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_message",
          "params": {
          	"message_id": "0005:000017A6"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_message method with block id
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_message",
          "params": {
          	"message_id": "0005:000017A6",
          	"block": "5C331A00"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_message_list method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_message_list",
          "params": {
          	"block": "5C331A00"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_message_list method without params
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_message_list",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_signatures method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_signatures",
          "params": {
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_signatures method with block id
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_signatures",
          "params": {
              "block": "5C332600"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_transaction method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_transaction",
          "params": {
              "txid": "0005:0000179E:0001"
          }
      }
      """
      Then response will have method and params formatted as ads request

  Scenario: Call get_vipkeys method
      When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "get_vipkeys",
          "params": {
              "viphash": "41778D23F86043F4B5570229ED14B0B1F2D7B55948EA94D3C487A9C0EE54F135"
          }
      }
      """
      Then response will have method and params formatted as ads request

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

