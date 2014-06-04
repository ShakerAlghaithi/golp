class Thing < ActiveRecord::Base
	validates :name , presence: true ,
	                  length: { minimum: 3, maximum: 250} # or {in: 3..250}
	validates :description, length: {maximum: 500}
end
