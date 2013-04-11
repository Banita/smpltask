class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|
    	t.references :user_id

      t.timestamps
    end
  end
end
