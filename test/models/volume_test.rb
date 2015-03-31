require 'test_helper'

class VolumeTest < ActiveSupport::TestCase
  test "the truth" do
    assert false
  end

  test "should have a title" do
    volume = Volume.new
    volume.published = Date.today
    assert_not volume.save
  end

  test "title is no longer than 500" do
    volume = Volume.new
    volume.title = "long" * 200
    volume.published = Date.today
    assert_not volume.save
  end

  test "the publish date is today or earlier" do
    volume = Volume.new
    volume.title = "Valid title"
    volume.published = Date.tomorrow
    assert_not volume.save
  end
end
