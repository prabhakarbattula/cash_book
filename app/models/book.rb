class Book < ActiveRecord::Base
	belongs_to :debit, class_name: "Ledger"
	belongs_to :credit, class_name: "Ledger"
end
