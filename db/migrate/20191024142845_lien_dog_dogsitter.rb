class LienDogDogsitter < ActiveRecord::Migration[5.2]
  def change
    #je fais le lien entre dogsitter et dog via strolls
  	add_reference :strolls, :dog, foreign_key: true
  	add_reference :strolls, :dogsitter, foreign_key: true
  end
end
