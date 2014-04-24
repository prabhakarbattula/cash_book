require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def test_presence_of_amount
	  ledger1 = Ledger.create(name: 'petrol')
	  ledger2 = Ledger.create(name: 'cash')
	  ledger3 = Ledger.create(name: 'pooja')

	  book1 = Book.create(date: 2014-04-23, debit_id: ledger1.id, credit_id: ledger2.id, amount: 0)

		assert_not_equal true, book1.valid?
  end
end
