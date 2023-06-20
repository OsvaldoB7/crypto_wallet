class Add < ActiveRecord::Migration[7.0]
  def change
    add_reference :coins, :mining_types, foreign_key: true
  end
end
