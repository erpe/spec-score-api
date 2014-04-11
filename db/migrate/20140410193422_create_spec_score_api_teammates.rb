class CreateSpecScoreApiTeammates < ActiveRecord::Migration
  def change
    create_table :sc_teammates do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
    add_index :sc_teammates, :user_id
    add_index :sc_teammates, :project_id
  end
end
