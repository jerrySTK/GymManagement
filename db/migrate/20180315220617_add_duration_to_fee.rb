class AddDurationToFee < ActiveRecord::Migration[5.1]
  def change
    add_column :fees, :duration, :string
  end
end
