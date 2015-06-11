class CategoriesController < ApplicationController
	def show
		@category = Category.find(params[:id])
		@stories = @category.stories
	end
end