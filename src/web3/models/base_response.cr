require "http/client"
require "json"

module Web3::Models
  class BaseResponse
    property status_code : Int32 = 0
    property protocol_version : String? = nil
    property headers : HTTP::Headers = HTTP::Headers.new

    JSON.mapping({
      jsonrpc: {type: String, nilable: false},
      id: {type: Int32, nilable: false},
    })

    def success? : Bool
      @status_code == 200
    end
  end
end
