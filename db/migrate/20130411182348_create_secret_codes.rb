class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|

      t.timestamps
    end
  end
end
