class Question < ApplicationRecord
  self.inheritance_column = nil
  has_many :answers
  belongs_to :survey
end
