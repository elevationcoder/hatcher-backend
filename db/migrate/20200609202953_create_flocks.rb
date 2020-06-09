class CreateFlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :flocks do |t|
      t.integer :quantity
      t.string :name
      t.string :breed
      t.string :diet

      t.timestamps
    end
  end
end
