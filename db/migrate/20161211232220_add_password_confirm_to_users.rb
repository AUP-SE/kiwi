class AddPasswordConfirmToUsers < ActiveRecord::Migration
  def change
    add_column :users, :passwordConfirm, :string
  end
end
