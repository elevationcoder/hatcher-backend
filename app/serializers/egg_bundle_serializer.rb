class EggBundleSerializer < ActiveModel::Serializer
  attributes :id, :batch_number, :amount, :amount_fertilized, :amount_hatched, :start_date, :first_hatch, :init_temp, :init_humit, :lockdown_temp, :lockdown_humid, :flock_id
end
