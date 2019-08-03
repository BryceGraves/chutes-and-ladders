class ChangePositionToPlayers < ActiveRecord::Migration[5.2]
  def change
    change_column :players, :position, :integer, default: 1
  end
end
