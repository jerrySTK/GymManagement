class AddContactInfoToPeople < ActiveRecord::Migration[5.1]
  def change
      add_column :people, :street, :string, :limit=> 255
      add_column :people, :number, :string, :limit=> 10
      add_column :people, :colony, :string, :limit=> 255
      add_column :people, :telephone, :string, :limit=> 15
      add_column :people, :birthday, :datetime
  end
end
