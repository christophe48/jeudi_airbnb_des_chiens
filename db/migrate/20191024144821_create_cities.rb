class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      #je crée ma table city
      t.string :city_name
    end
  end
end
