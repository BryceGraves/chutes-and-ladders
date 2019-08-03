class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :current_player, :turn
  end
end
