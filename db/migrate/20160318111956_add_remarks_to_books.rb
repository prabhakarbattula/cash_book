class AddRemarksToBooks < ActiveRecord::Migration
  def change
    add_column :books, :remarks, :string
  end
end
