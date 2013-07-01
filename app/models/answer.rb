class Answer < ActiveRecord::Base
  attr_accessible :option, :user_id, :question_id, :option_id

  validates :option, :user_id, :question_id, :option_id, presence: true
  has_many :options
  belongs_to :user
  belongs_to :question
end
