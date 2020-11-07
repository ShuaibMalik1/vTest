class ProductImporter
	def fetch
		begin
			response1 = HTTParty.get('https://reqres.in/api/unknown/')
			response2 = HTTParty.get('https://reqres.in/api/products/')

			json_data1 = parser(response1)
			json_data2 = parser(response2)
	        
	        json_data = json_data1 + json_data2
	    
	    rescue StandardError => e
          puts "Error: #{e}"
        end

	end

	private
	def parser(response)
		if response.success?
			body = JSON.parse(response.body)
			data = body["data"]
		end
	end
end