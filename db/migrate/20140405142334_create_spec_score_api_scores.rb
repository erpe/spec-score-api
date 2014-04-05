class CreateSpecScoreApiScores < ActiveRecord::Migration
  def change
    create_table :spec_score_api_scores do |t|
      t.integer :user_id
      t.integer :project_id
      t.float :duration, default: 0.0
      t.integer :specs, default: 0
      t.integer :succeeded, default: 0
      t.integer :failed, default: 0
      t.integer :pending, default: 0

      t.timestamps
    end

    add_index :spec_score_api_scores, :user_id
    add_index :spec_score_api_scores, :project_id
  end
end
