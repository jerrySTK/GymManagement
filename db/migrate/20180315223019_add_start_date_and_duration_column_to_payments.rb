class AddStartDateAndDurationColumnToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :init_date, :date
    add_column :payments, :duration, :integer
  end
end
