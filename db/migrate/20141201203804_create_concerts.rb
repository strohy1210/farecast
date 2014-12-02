class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.integer :artist_id
      t.integer :venue_id

      t.string :name
      t.datetime :show_time
      t.decimal :face_value         #TicketFly
      
      t.float :spotify_popularity
      t.float :sg_popularity
      t.float :sg_venue_popularity
      t.float :echo_familiarity
      t.float :echo_hotttnesss
            
      t.timestamps

# TO CONSIDER ADDING LATER
      # t.integer :new_album_likes    #Spotify
      # t.integer :facebook_likes     #Facebook
      # t.integer :artist_followers   #Spotify
# FOR ROI CALCULATION
      # t.datetime :listing_count     #SeatGeek
      # t.decimal :current_min_price  #SeatGeek
      
    end
  end
end
