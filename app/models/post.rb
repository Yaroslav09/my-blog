# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
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
  belongs_to :user

  validates :title, :summary, :body, presence: true
end
