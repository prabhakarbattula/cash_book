class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.date :date
      t.string :debit
      t.string :credit
      t.decimal :amount

      t.timestamps
    end
  end
end
