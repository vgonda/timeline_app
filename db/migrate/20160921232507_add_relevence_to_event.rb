class AddRelevenceToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :relevence, :integer, default: 0
  end
end
