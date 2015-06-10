class PetitionsController < ApplicationController
	def index
		@petitions = Petition.get_petitions
	end

	def show
		@petition = Petition.get_petition(params["id"])
	end
end