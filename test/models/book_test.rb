require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def test_presence_of_amount
	  book1 = books(:one)

		assert_not_equal true, book1.valid?
  end

  def test_presence_of_date
	  book1 = books(:two)

	  assert_not_equal true, book1.valid?
  end

  def test_presence_of_debit_id
	  book1 = books(:three)

	  assert_not_equal true, book1.valid?
  end

  def test_presence_of_credit_id
	  book1 = books(:four)

	  assert_not_equal true, book1.valid?
  end

  def test_all_present
	  book1 = books(:five)

	  assert_equal true, book1.valid?
  end

end