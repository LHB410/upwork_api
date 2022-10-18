class Family < ApplicationRecord
  has_one :mother, :class_name => 'Mother'
  has_one :father, :class_name => 'Father'
  has_many :children, :class_name => 'Child'

  validates_presence_of :address
  validates :address, length: {minimum: 10 }


end
