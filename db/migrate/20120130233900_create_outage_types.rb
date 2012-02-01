class CreateOutageTypes < ActiveRecord::Migration
  def change
    create_table :outage_types do |t|
      t.string :name
      t.integer :code
      t.text :description
      t.boolean :active
      t.string :created_by

      t.timestamps
    end
  end
end
