class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :feed_amount
      t.datetime :event_time
      t.boolean :has_run
      
      t.timestamps
    end
  end
end
