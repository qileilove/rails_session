class AddQuantityToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :quantity, :integer, :default => 1

  end
  def self.down
    remove_column :ideas, :quantity
  end
end
