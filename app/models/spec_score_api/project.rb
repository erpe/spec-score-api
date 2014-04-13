require 'digest/md5'

module SpecScoreApi
  class Project < ActiveRecord::Base
    self.table_name = 'sc_projects'

    belongs_to :owner,  class_name: 'User'
    validates :owner,   presence: true
    validates :token,   presence: true
    validates :name,    presence: true, uniqueness: true

    before_validation :check_token, on: :create

    has_many :teammates,  dependent: :destroy
    has_many :users,      through: :teammates 
    has_many :scores,     dependent: :destroy

    private 

    def check_token
      supply_token if token.nil? || token.length < 10
    end

    def supply_token
      self.token = Digest::MD5.hexdigest("#{name} #{rand(10000)}")
    end
  end
end
