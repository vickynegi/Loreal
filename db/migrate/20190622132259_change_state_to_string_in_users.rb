class ChangeStateToStringInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :state, :string
  end
end
