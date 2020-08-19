class AddDestinityNameToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :destiny_name, :string
  end
end
