class ChangePassword < ActiveRecord::Migration[5.0]
  def change
     rename_column :users, :has_secure_password, :password_digest
  end

end
