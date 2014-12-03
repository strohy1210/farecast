require 'csv'
require 'pry'
require 'date'

namespace :import_musichall_csv do
  desc "Import musichall CSV Data"
  task :create_concerts => :environment do
    csv_text = File.read('musichall.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      # binding.pry
      venue = Venue.find_by(name: "Music Hall of Williamsburg") || Venue.create(name: "Music Hall of Williamsburg", capacity: 550)
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