class Petition < ActiveRecord::Base
	def self.get_petitions

	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?limit=5"
	parsed_response = JSON.parse(response)
	parsed_response["results"]
	end

	def self.get_petition(id)
		response = RestClient.get "https://api.whitehouse.gov/v1/petitions/#{id}.json"
		parsed_response = JSON.parse(response)
		parsed_response["results"][0]
	end
end