class CreateEggBundles < ActiveRecord::Migration[6.0]
  def change
    create_table :egg_bundles do |t|
      t.integer :batch_number
      t.integer :amount
      t.integer :amount_fertilized
      t.integer :amount_hatched
      t.datetime :start_date
      t.datetime :first_hatch
      t.float :init_temp
      t.integer :init_humid
      t.float :lockdown_temp
      t.integer :lockdown_humid
      t.belongs_to :flock

      t.timestamps
    end
  end
end
