class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name        #SeatGeek
      t.boolean :new_album  #Spotify

      t.timestamps
    end
  end
end
