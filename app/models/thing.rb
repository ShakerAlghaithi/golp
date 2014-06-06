class Thing < ActiveRecord::Base
	validates :name , presence: true ,
	                  length:   { in: 3..250} #{ minimum: 3, maximum: 250}
	validates :description, 
	                      length: {maximum: 1000},
	                           presence: true
	 #validates  :user_id  presence: true
	 belongs_to :user
end
