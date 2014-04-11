module SpecScoreApi
  class User < ActiveRecord::Base
    self.table_name = 'sc_users'
    
    has_many :scores
    has_many :engagements, class_name: 'Teammate'
    has_many :projects, through: :engagements
    
    validates :email, presence: true
    validates :nick, presence: true

    
  end
end
