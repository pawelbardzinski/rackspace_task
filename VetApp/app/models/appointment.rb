class Appointment < ActiveRecord::Base
  validates :date_of_visit, presence: true
  validates :pet, presence: true
  validates :customer, presence: true
  validates :visit_reason, presence: true
  validate :date_check
  
  def date_check
    if self.date_of_visit < Date.today
      errors.add(:date_of_visit, 'The appointment date can\'t be in the past.')
    end
  end
  
  def self.search(query)
    where("pet like ?", "%#{query}%") 
  end
end
