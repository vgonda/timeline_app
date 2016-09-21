class CreateEvent < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :message
      t.timestamps
    end
  end
end
