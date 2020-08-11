class AddFamdescriptionToDestinies < ActiveRecord::Migration[6.0]
  def change
    add_column :destinies, :famdescription, :string
  end
end
