require 'csv'
namespace :import_shops_csv do
  task :create_shops => :environment do
	csv_text = File.read("../../db/shops_shopmium.csv")
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
  	Shop.create!(row.to_hash)
 	end
  end
end 