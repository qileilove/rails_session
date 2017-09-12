class AddPriceToIdea < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :price, :decimal,
               :precision=> 8, :scale=>2, :default => 0
  end

end
