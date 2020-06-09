Flocks

has_many :egg_bundles
:quantity:integer, :name:string, :breed:string, diet:string

egg_bundle
belongs_to :flocks
:flock_id:integer, :amount:integer, amount_fertilized:integer, amount_hatched:integer, start_date:datetime, first_hatch:datetime, init_temp:float, lockdown_temp:float, init_humid:float, lockdown_humid:float
