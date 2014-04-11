module SpecScoreApi
  class Teammate < ActiveRecord::Base
    self.table_name = 'sc_teammates'
    belongs_to :user
    belongs_to :project
  end
end
