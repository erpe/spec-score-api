module SpecScoreApi
  class Teammate < ActiveRecord::Base
    belongs_to :user
    belongs_to :project
  end
end
