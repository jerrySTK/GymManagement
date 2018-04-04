class ChangeDurationToNumberInFees < ActiveRecord::Migration[5.1]
  def up
    remove_column :fees, :duration
    add_column :fees, :duration, :integer
  end

  def down
    remove_column :fees, :duration
    add_column :fees, :duration, :string
  end
end
