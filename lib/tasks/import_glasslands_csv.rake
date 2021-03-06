require 'csv'
require 'pry'
require 'date'
namespace :db do
  desc "Import CSV Data"
  task :import_glasslands_csv => :environment do
    csv_text = File.read('glasslands_events.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      # binding.pry
      venue = Venue.find_by(name: row[3]) || venue = Venue.create(name: row[3])
      show_time = DateTime.parse(row[1].gsub(".", "/"))
      name = row[2]
      venue_id = venue.id
      face_value = row[4].split(" - ").first[1..5].to_f
      sold_out = false
      if row[5]=="Sold Out"
        sold_out = true
      else
        sold_out =false
      end
  a = Artist.find_by(name: name) ||  Artist.create(name: name)    

      c= Concert.create!(name: name, show_time: show_time, artist_id: a.id, sold_out: sold_out, venue_id: venue_id, face_value: face_value)
    end 
  end
end 
 

# namespace :csv do

#  desc "Import CSV Data"
#  task :import_summonses => :environment do

#    csv_file_path = 'db/fixtures/fhv_summonses.csv'

#    CSV.foreach(csv_file_path) do |row|
#      v = Violation.new({
#        :license_number => row[0],
#        :date => row[2],
#        :charge => row[3],
#        :description => row[4]       
#      })
#      found_driver = Driver.find_by(:medallion_number => row[0])
#      v.driver_id = found_driver.id if found_driver != nil
#      v.save
#      puts "Dirver violation added!"
#    end
#  end
# end