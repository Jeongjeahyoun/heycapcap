class Team < ActiveRecord::Base
    has_many :joins
    has_many :users, through: :joins
    belongs_to :contest
end
