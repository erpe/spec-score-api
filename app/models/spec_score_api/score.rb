module SpecScoreApi
  class Score < ActiveRecord::Base
    self.table_name = 'sc_scores'

    belongs_to :user
    belongs_to :project
  end
end
