class CreateSpecScoreApiProjects < ActiveRecord::Migration
  def change
    create_table :sc_projects do |t|
      t.integer :owner_id
      t.string :name, uniq: true
      t.integer :count_specs
      t.integer :count_succeeded
      t.integer :count_failures
      t.integer :count_pending
      t.float :overall_duration
      t.integer :count_of_scores
      t.string :token, uniq: true

      t.timestamps
    end

    add_index :sc_projects, :owner_id
    add_index :sc_projects, :token
    add_index :sc_projects, :name
  end
end
