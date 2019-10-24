class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      #je crée ma table Dog
    	t.string :name
    	t.string :race
    end
  end
end
