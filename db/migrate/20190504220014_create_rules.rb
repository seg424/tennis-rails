class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
