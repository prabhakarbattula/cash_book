class Book < ActiveRecord::Base
	belongs_to :debit, class_name: "Ledger"
	belongs_to :credit, class_name: "Ledger"

	validates_presence_of :debit_id, :credit_id, :date, :amount
	validates_numericality_of :amount, greater_than_or_equal_to: 1
end
