class AddEmailToIdea < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :email, :string
  end
end
