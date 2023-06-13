class CreateMiniTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :mini_types do |t|
      t.string :nome
      t.string :acronym

      t.timestamps
    end
  end
end
