class LienCityDogsitter < ActiveRecord::Migration[5.2]
  def change
    #je fait le lien entre city avec dog et city avec dogsitter
  	add_reference :dogs, :city, foreign_key: true
  	add_reference :dogsitters, :city, foreign_key: true
  end
end
