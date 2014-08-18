class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    validates_confirmation_of :password,
                          if: lambda { |m| m.password.present? }
  end
end
