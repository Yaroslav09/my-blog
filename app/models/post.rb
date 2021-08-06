class Post < ApplicationRecord
  
  belongs_to :user

  validates :title, :summary, :body, presence: true
end
