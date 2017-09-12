class AddNewThingToPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :plan_name, :string
    add_column :plans, :desc,:string
  end
end
