class User < ApplicationRecord
  has_many :tips
  has_many :comments

  has_and_belongs_to_many :favourites, class_name: Tip.name

  after_initialize :init
  def init
    self.name  ||= 'anonymous'  # will set the default value only if it's nil
    self.role ||= 'registered'  # also setting a default association
    end
 
 # validations
  validates :email, presence: true,
                    uniqueness: true
  validates :role, presence: true
  validates :name, presence: true
end
