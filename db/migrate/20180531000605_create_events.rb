class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :user, index: true
      t.integer :feed_amount
      t.datetime :event_time
      t.boolean :has_run
      
      t.timestamps
    end
  end
end
