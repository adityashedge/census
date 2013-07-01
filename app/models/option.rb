class Option < ActiveRecord::Base
  attr_accessible :desc, :question_id
  validates :desc, presence: true
  validates :desc, length: {minimum: 3, message: 'too short'} 
  validates :desc, uniqueness: {scope: :question_id, message: 'Every question should have unique options'}
  belongs_to :question
  belongs_to :survey
  belongs_to :answer
end
