class Stroll < ApplicationRecord
	#dans cette relation je dis qu'une promenade met en lien un promeneur et un chien
	belongs_to :dog
	belongs_to :dogsitter
end
