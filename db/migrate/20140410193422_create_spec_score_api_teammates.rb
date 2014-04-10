class CreateSpecScoreApiTeammates < ActiveRecord::Migration
  def change
    create_table :spec_score_api_teammates do |t|
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
    add_index :spec_score_api_teammates, :user_id
    add_index :spec_score_api_teammates, :project_id
  end
end
