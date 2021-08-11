# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  image      :string
#  summary    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_posts_on_user_id_and_created_at  (user_id,created_at)
#
class Post < ApplicationRecord  
  mount_uploader :image, ImageUploader  

  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true
  
  has_rich_text :body
  belongs_to :user
end
