class CreateStatusReports < ActiveRecord::Migration
  def change
    create_table :status_reports do |t|
      t.string :name
      t.integer :outage_type_id
      t.integer :start_time
      t.integer :end_time
      t.string :affected_groups
      t.string :affected_services
      t.text :description
      t.boolean :scheduled
      t.boolean :resolved
      t.string :created_by

      t.timestamps
    end
  end
end
