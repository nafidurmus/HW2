class Reservation < ApplicationRecord
	belongs_to :customer

	before_create do 
	  	reservation_code = (0...50).map { ('a'..'z').to_a[rand(26)] }.jo
	  end

end
