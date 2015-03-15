class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :name
      t.integer :max
      t.string :email
      t.string :event

      t.timestamps
    end
  end
end
