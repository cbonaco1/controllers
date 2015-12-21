class UpdateUserColumnUserName < ActiveRecord::Migration
  def change
    remove_column(:users, :name)
    remove_column(:users, :email)
    add_column(:users, :username, :string)
    change_column_null(:users, :username, false)
    add_index(:users, :username, unique: true)
  end
end
