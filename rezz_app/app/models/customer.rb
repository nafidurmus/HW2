class Customer < ApplicationRecord
	has_many :reservations
	
	before_validation :delete_spaces_in_name, :is_it_sunday


	def is_it_sunday
		time = Time.new
		if time.sunday?
			errors.add(:base, "today is sunday :D")
		end
	end

	private

	def delete_spaces_in_name
		customer.name.gsub(/[[:space:]]+/, "")
	end
end
