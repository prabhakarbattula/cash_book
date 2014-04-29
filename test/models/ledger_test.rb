require 'test_helper'

class LedgerTest < ActiveSupport::TestCase
  def test_checking_validations
		ledger1 = ledgers(:two)
			ledger2 = Ledger.new(name: 'PETROL')

		assert_not_equal true, ledger2.valid?
  end


  def test_check_trans_b4_del

	  ledger1 = Ledger.create(name: 'petrol')
	  ledger2 = Ledger.create(name: 'cash')


	  Book.create(date: 2014-04-23, debit_id: ledger1.id, credit_id: ledger2.id, amount: 1)

	  if Book.find_by_debit_id(ledger1.id).present? || Book.find_by_credit_id(ledger1.id).present?
	  else
		    ledger1.destroy
		end

	  assert_equal true, ledger1.present?
  end



  def test_check_trans_del

	  ledger1 = Ledger.create(name: 'petrol')
	  ledger2 = Ledger.create(name: 'cash')
	  ledger3 = Ledger.create(name: 'pooja')

	  Book.create(date: 2014-04-23, debit_id: ledger1.id, credit_id: ledger2.id, amount: 1)

	  if Book.find_by_debit_id(ledger3.id).present? || Book.find_by_credit_id(ledger3.present?)
		  ledger3.destroy
	  else

	  end

	  assert_equal true, ledger3.destroyed?
  end




end
