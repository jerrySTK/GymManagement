class CreateFeeTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :fee_types do |t|
      t.string :name, :length => 10

      t.timestamps
    end
  end
end
