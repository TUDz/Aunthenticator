# == Schema Information
#
# Table name: photos
#
#  id         :bigint           not null, primary key
#  image_url  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Photo < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates_format_of :image_url, with: /.\.(png|jpeg|jpg|gif)/
end
