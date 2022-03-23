class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  def author
    user.full_name
  end
end
