require 'test_helper'

class LedgerTest < ActiveSupport::TestCase
  def test_checking_validations
		name = Ledger.new(cash)
		name.valid?
		assert :false
  end
end
