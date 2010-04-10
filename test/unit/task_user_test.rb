require 'test_helper'

class TaskUserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TaskUser.new.valid?
  end
end
