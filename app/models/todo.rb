# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  due_date    :datetime
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Todo < ApplicationRecord
  validates :title, :presence => true
end
