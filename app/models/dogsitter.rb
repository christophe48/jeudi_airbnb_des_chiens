class Dogsitter < ApplicationRecord
	#dans cette relation je dis qu'un promeneur peut faire plusieur promenade avec différents chients
	has_many :strolls
	has_many :dogs, through: :stroll
	#je précise aussi que le promeneur est rattaché a une seule ville
	belongs_to :city
end
