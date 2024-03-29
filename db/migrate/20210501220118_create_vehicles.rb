class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :year
      t.string :brand
      t.string :status
      t.jsonb :crew, default: {}

      t.timestamps
    end
  end
end
