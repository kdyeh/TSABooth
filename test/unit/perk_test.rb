require 'test_helper'

class PerkTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Perk.new.valid?
  end
end
