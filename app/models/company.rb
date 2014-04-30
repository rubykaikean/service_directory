class Company < ActiveRecord::Base

	has_many :services
	belongs_to :category
	belongs_to :location

end
