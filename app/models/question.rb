class Question < ApplicationRecord
  belongs_to :survey
  has_many :answerrs, :dependent => :destroy
  accept_nested_attributes_for :answerrs, :reject_if => lambda {|a| a[:content].blank? }, :allow_destroy => true
end
