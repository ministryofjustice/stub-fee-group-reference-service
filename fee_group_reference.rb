require 'json'

class FeeGroupReference < Struct.new(:postcode)
  def status
    error? ? 500 : 201
  end

  def payload
    body.to_json
  end

  def body
    error? ? error_body : success_body
  end

  def success_body
    {
      "fgr"               => SecureRandom.hex(8),
      "ETOfficeCode"      => 22,
      "ETOfficeName"      => "Birmingham",
      "ETOfficeAddress"   => "Centre City Tower, 5­7 Hill Street, Birmingham B5 4UU",
      "ETOfficeTelephone" => "0121 600 7780"
    }
  end

  def error_body
    {
      "status"           => "error",
      "errorCode"        => 1001,
      "errorDescription" => "Unable to connect to ETFees database"
    }
  end

  private def error?
    postcode == 'ER0 0RR'
  end
end
