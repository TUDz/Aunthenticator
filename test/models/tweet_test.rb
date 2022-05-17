# == Schema Information
#
# Table name: tweets
#
#  id         :bigint           not null, primary key
#  body       :text
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
