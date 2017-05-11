class Contact < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
   # @full_name = first + " " + last
    return "#{first} #{last}"
  end

  def full_number
   "+81 #{number}" 
  end

  def self.find_all_johns
    Contact.where(first: "John")
  end
  
end
