class ContactList < ApplicationRecord
  has_many :contact_lists_contacts, dependent: :destroy
  has_many :contacts, through: :contact_lists_contacts  
  validates_presence_of :name  
end
