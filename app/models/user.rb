class User < ApplicationRecord
  has_many :posts
  has_many :comments

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_address
    "#{address}, #{postcode}, #{city}, #{country}"
  end

end
