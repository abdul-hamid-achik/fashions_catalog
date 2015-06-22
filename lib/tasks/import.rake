require 'csv' 
namespace :import do
	task products: :environment do
		filename = File.join(Rails.root, "thefashion_test_data.csv")
		CSV.foreach(filename, :headers => true, :col_sep => ";") do |row|
		  Product.create(row.to_hash)
		end
	end
end
