class Contact < ApplicationRecord
  has_many :contact_lists_contacts
  has_many :contact_lists, through: :contact_lists_contacts  
  validates_presence_of :name, :email
  validates_uniqueness_of :email
end
