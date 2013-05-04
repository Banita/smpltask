class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|
<<<<<<< HEAD
    	t.string :secret_code
=======
>>>>>>> f0fe7efcee3f608d1553babfd2cf7687cac3e947
    	t.references :user

      t.timestamps
    end
  end
end
