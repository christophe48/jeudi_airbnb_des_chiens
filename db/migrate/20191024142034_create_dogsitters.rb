class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
      #je crée ma table Dogsitter
    	t.string :first_name
    	t.string :last_name
    end
  end
end
