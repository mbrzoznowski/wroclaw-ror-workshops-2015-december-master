class Student < ActiveRecord::Base
  has_many :subject_items, through: :participations
  has_many :participations, dependent: :destroy
  has_many :subject_item_notes, dependent: :destroy
  
  validates :first_name, :last_name, presence: true

  accepts_nested_attributes_for :subject_items

  def payment_status
    if payment == true
      'Done'
    else
      'Waiting'
    end
  end
  
end
