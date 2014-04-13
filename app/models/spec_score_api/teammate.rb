module SpecScoreApi
  class Teammate < ActiveRecord::Base
    self.table_name = 'sc_teammates'
    belongs_to :user
    belongs_to :project

    delegate :nick, to: :user
    delegate :email, to: :user
  end
end
