class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :artist_id
      t.integer :venue_id
      t.string :name
      t.datetime :time
      t.float :seatgeek_score
      t.integer :artist_followers
      t.integer :artist_likes
      t.integer :new_album_likes
      t.decimal :current_min_price

      t.timestamps
    end
  end
end
