class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :country
      t.integer :state
      t.string :email_id

      t.timestamps
    end
  end
end
