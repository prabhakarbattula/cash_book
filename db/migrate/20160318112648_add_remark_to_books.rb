class AddRemarkToBooks < ActiveRecord::Migration
  def change
    add_column :books, :remark, :string
  end
end
