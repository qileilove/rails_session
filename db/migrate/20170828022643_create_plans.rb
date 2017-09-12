class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.belongs_to :idea, index: true
      t.timestamps
    end


  end
end
