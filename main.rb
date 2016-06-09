require "./constants"
require "rest-client"

UNIQUE_COLLECTOR_URL = "#{ApplicationConstants::SUMOLOGIC_HTTP_COLLECTOR_ENDPOINT}#{ApplicationConstants::HTTP_COLLECTOR_CODE}"

log_files = Dir.glob("logs/*.{log,gz}");

log_files.each do |log_file|
  puts "Uploading file #{log_file}"
  headers = {}
  if File.extname(log_file) == ".gz"
    headers["Content-Encoding"] = "gzip"
  end

  data = File.open(log_file, "rb")
  RestClient::Request.execute(method: :post, url: UNIQUE_COLLECTOR_URL, payload: data.read, headers: headers)

  data.close
end
