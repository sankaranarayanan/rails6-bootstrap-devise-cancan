class CreateSecretCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :secret_codes do |t|
      t.integer :user_id, :null => true
      t.string :code
      
      t.timestamps
    end
  end
end
