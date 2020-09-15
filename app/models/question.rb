class Question < ApplicationRecord
has_many :answers
belongs_to :user,optional: :true
belongs_to :topic
end
