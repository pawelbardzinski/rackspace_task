class Record < ActiveRecord::Base
  validates :pet_name, presence: true, length: { maximum: 35, message: "Pet name can't be longer than 35 characters." }
  validates :pet_type, presence: true
  validates_inclusion_of :pet_type, :in => %w(dog cat bird)
  validates :breed, presence: true, length: { maximum: 35, message: "Breed can't be longer than 35 characters." }
  validates :age, presence: true
  validates :weight, presence: true
  validates :last_visit_date, presence: true
end
