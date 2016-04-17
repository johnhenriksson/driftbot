class MXToolbox
	require 'httparty'

	def self.lookup(type, host)
	api_url = "https://mxtoolbox.com/api/v1/lookup/#{type}/#{host}"
	api_key = ENV['MXTOOLBOX_API_KEY']

	response = HTTParty.get(api_url, headers: {"Authorization" => "#{api_key}"})
	
	if type == 'a'
		return response.parsed_response["Information"][0]["IP Address"]
	else
		return "Error wrong type"
	end
	end

end