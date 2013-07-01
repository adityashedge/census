class Survey < ActiveRecord::Base
  attr_accessible :name, :year, :stype, :location , :questions_attributes
  validates :name, :year, :stype, :location, presence: true    
  validates :name, length: {minimum: 5, message: 'too short'} 
  validates :name, uniqueness: true
  has_many :questions#, dependent: :destroy 
  has_many :options, through: :questions#, dependent: :destroy
  accepts_nested_attributes_for :questions
end
