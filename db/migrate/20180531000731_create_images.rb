class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :file_name
      t.belongs_to :event, index: true

      t.timestamps
    end
  end
end
