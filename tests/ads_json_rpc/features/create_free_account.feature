Feature: Create free account

  Scenario: Exceed free account limit
    When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_free_account",
          "params": {
              "public_key": "860BB97F2E355C094CEFB63A7A1245C3D3073E535087FBACEF573C6EC48E17A9",
              "confirm": "BE3B9AB24AEDC0B7DB99DB32CF62FDC1E6F19829401DAA74156A341B80F9406F369EC87690466C08924811ECE19752A18FA59D93B1364C67C5D76E2CE6942500"
          }
      }
      """
    Then create_free_account response will have valid method and params formatted as ads request
    When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_free_account",
          "params": {
              "public_key": "860BB97F2E355C094CEFB63A7A1245C3D3073E535087FBACEF573C6EC48E17A9",
              "confirm": "BE3B9AB24AEDC0B7DB99DB32CF62FDC1E6F19829401DAA74156A341B80F9406F369EC87690466C08924811ECE19752A18FA59D93B1364C67C5D76E2CE6942500"
          }
      }
      """
    Then response will have an error "AdsError"
    Then I wait 3 seconds
    When I send request
      """
      {
          "jsonrpc": "2.0",
          "id": "1",
          "method": "create_free_account",
          "params": {
              "public_key": "860BB97F2E355C094CEFB63A7A1245C3D3073E535087FBACEF573C6EC48E17A9",
              "confirm": "BE3B9AB24AEDC0B7DB99DB32CF62FDC1E6F19829401DAA74156A341B80F9406F369EC87690466C08924811ECE19752A18FA59D93B1364C67C5D76E2CE6942500"
          }
      }
      """
    Then create_free_account response will have valid method and params formatted as ads request
