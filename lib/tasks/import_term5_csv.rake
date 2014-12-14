require 'csv'
require 'pry'
require 'date'

namespace :db do
  desc "Import term5 CSV Data"
  task :import_term5_csv => :environment do
    csv_text = File.read('terminal5.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    
      venue = Venue.find_by(name: "Terminal 5") || Venue.create(name: "Terminal 5", capacity: 3000)
      show_time = DateTime.parse(row[1].gsub(".", "/"))
      name = row[0]
      venue_id = venue.id
     
        face_value = row[2].split(" ").first[1..3].to_f
     
      sold_out = false
      if row[3]=="Sold Out"
        sold_out = true
      else
        sold_out =false
      end
  a = Artist.find_by(name: name) || Artist.create(name: name)    

      c= Concert.create!(name: name, show_time: show_time, artist_id: a.id, sold_out: sold_out, venue_id: venue_id, face_value: face_value)
    end 
  end
end