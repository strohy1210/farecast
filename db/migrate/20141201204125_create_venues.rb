class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name        #SeatGeek
      t.integer :capacity   #Manually

      t.timestamps
    end
  end
end
