class CreateDestinies < ActiveRecord::Migration[6.0]
  def change
    create_table :destinies do |t|
      t.string :url
      t.string :city
      t.string :country
      t.string :family
      t.string :description

      t.timestamps
    end
  end
end
