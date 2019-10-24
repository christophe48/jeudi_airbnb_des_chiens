class Dog < ApplicationRecord
	#dans cette relation je dis que le chien peut faire plusieur promenade avec différents promeneur
	has_many :strolls
	has_many :dogsitters, through: :strolls
	#je précise qu'il doit forcément rattaché à une ville
	belongs_to :city
end
