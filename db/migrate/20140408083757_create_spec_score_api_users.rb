class CreateSpecScoreApiUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :nick
      t.integer :count_specs, default: 0
      t.integer :count_succeeded, default: 0
      t.integer :count_failures, default: 0
      t.float :overall_duration, default: 0.0
      t.integer :count_scores, default: 0
      t.string :api_token, default: nil

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :api_token
  end
end
