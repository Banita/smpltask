class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|
    	t.string :secret_code
    	t.references :user

      t.timestamps
    end
  end
end
