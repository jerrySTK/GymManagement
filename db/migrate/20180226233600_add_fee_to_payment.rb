class AddFeeToPayment < ActiveRecord::Migration[5.1]
  def change
    add_reference :payments, :fee, foreign_key: true
  end
end
