class Question < ActiveRecord::Base
  attr_accessible :desc, :survey_id, :options_attributes

  validates :desc, presence: true
  validates :desc, uniqueness: {scope: :survey_id, message: 'survey should not contain repetitive questions'}
  validates :desc, length: {minimum: 5, message: 'too short'} 
  belongs_to :survey
  has_one :answer
  has_many :options #, dependent: :destroy
  
  accepts_nested_attributes_for :options
end
