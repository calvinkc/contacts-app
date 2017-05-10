class Contact < ApplicationRecord
  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    @full_name = first + " " + last
  end

  def full_number
    @full_number = "+81 " + number.to_s
  end


end
