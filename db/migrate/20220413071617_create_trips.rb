class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :location
      t.boolean :completed, default: false
      t.date :date_added, :default => DateTime.now
      t.date :date_completed, :default => nil
      t.integer :user_id

      t.timestamps
    end
  end
end
