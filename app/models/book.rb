class Book < ActiveRecord::Base
	has_many :ledgers
end
