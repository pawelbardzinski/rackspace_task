class Doctor < ActiveRecord::Base
  has_many :appointments
  validates :name,  presence: true, length: { maximum: 35, message: "Name can't be longer than 35 characters." }
  validates :zip, length: { maximum: 5 }
  validates_inclusion_of :years_of_experience, {:in => 1..100, :message => "Years of experience must be between 1 and 100."}
end
