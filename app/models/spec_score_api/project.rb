require 'digest/md5'

module SpecScoreApi
  class Project < ActiveRecord::Base
    belongs_to :owner, class_name: 'User'
    validates :owner, presence: true
    validates :token, presence: true
    validates :name, presence: true, uniqueness: true

    before_validation :check_token, on: :create

    private 

    def check_token
      if token.nil? || token.length < 10
        supply_token
      end
    end

    def supply_token
      self.token = Digest::MD5.hexdigest("#{name} #{rand(10000)}")
    end
  end
end
