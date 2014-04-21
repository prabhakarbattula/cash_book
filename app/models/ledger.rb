class Ledger < ActiveRecord::Base
	has_many :books
	validates_uniqueness_of :name, :case_sensitive => false
end
