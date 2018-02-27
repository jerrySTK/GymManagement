class RemoveDurationFromPayments < ActiveRecord::Migration[5.1]
  def change
    remove_column :payments, :duration
  end
end
