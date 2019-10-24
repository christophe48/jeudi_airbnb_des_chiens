class City < ApplicationRecord
	#Dans cette relation je dis qu'une ville peut avoir plusieurs chien et plusieur promeneur
	has_many :dogs
	has_many :dogsitters
end
