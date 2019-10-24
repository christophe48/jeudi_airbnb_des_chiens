class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      #je crée ma table qui liera Dog et Dogsitter en rajoutant une date 
    	t.datetime :date
    end
  end
end
