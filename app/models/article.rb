# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :text
#  body       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 100 }
  
  validates :body, presence: true
  validates :image, presence: true
  
  mount_uploader :image, ImageUploader
end
