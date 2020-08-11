class AddStateToDestinies < ActiveRecord::Migration[6.0]
  def change
    add_column :destinies, :state, :string
  end
end
