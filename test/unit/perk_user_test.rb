require 'test_helper'

class PerkUserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PerkUser.new.valid?
  end
end
