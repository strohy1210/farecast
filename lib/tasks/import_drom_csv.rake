require 'csv'
require 'pry'
require 'date'
namespace :db do
  desc "Import CSV Data"
  task :import_drom_csv => :environment do
    csv_text = File.read('drom.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
 
      venue = Venue.find_by(name: row[0]) || venue = Venue.create(name: row[0])
      show_time = DateTime.parse(row[2].gsub(".", "/"))
      # binding.pry
      name = row[3]
      venue_id = venue.id
      face_value = row[1].split(" - ").first[1..5].to_f
      sold_out = false
      if row[4]=="Sold Out"
        sold_out = true
      else
        sold_out =false
      end
 a = Artist.find_by(name: name) || Artist.create(name: name)    

      c= Concert.create!(name: name, show_time: show_time, artist_id: a.id, sold_out: sold_out, venue_id: venue_id, face_value: face_value)
    end 
  end
end 