class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
