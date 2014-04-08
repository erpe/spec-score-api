module SpecScoreApi
  class User < ActiveRecord::Base
    self.table_name = 'users'
    has_many :scores
    validates :email, presence: true
    validates :nick, presence: true
  end
end
