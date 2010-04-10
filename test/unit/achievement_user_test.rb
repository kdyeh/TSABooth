require 'test_helper'

class AchievementUserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AchievementUser.new.valid?
  end
end
