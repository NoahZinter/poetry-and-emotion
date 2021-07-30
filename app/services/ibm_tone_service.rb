class IBMToneService
  def self.tones(text)
    con = Faraday.new('https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/03b7de88-547f-41c8-9407-ee492cda5b43') do |connection|
      connection.basic_auth('apikey', ENV['IBM_API_KEY'])
    end
    url = 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/03b7de88-547f-41c8-9407-ee492cda5b43/v3/tone'
    res = con.get(url, {text: text, version: '2017-09-21'})
    JSON.parse(res.body, symbolize_names: true)
  end
end