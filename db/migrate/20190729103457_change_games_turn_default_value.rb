class ChangeGamesTurnDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :games, :turn, :integer, default: 0
  end
end
