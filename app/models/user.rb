class User < ApplicationRecord
    has_many :badges
    has_many :questions
end