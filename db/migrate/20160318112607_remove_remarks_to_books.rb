class RemoveRemarksToBooks < ActiveRecord::Migration
  def change
    remove_column :books, :remarks, :string
  end
end
