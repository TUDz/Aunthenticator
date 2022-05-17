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
require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  test " should have a title value" do
    photo = Photo.new image_url: "Algo.png"
    assert_not photo.save
  end

  test "should have an image_url value" do
    photo = Photo.new title: "algo.png"
    assert_not photo.save
  end

  test "should not save and invalid image url" do
    photo = Photo.new title: "Something", image_url: "algo"
    assert_not photo.save
  end

  test "should save valid image urls" do
    photo = Photo.new image_url: "algo.jpg", title: "Algo"
    assert photo.save
  end
end
