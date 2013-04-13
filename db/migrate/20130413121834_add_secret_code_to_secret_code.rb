class AddSecretCodeToSecretCode < ActiveRecord::Migration
  def change
    add_column :secret_codes, :secret_code, :string
  end
end
