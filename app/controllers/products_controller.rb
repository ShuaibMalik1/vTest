class ProductsController < ApplicationController

	def index
		#fetching all products from APIs
		@products ||= ProductImporter.new.fetch
	end

end