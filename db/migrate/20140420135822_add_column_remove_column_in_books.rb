class AddColumnRemoveColumnInBooks < ActiveRecord::Migration
  def change
	  add_column :books, :debit_id, :integer
	  add_column :books, :credit_id, :integer

	  remove_column :books, :debit
	  remove_column :books, :credit
  end
end
