class Report < ApplicationRecord
  
  belongs_to :user
  
  validates :report_title, presence: true
  validates :sentence, presence: true
    
end
