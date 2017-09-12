require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save idea without title" do
  idea = Idea.first
  assert_not idea.save
  end

end
