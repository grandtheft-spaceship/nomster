require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	test "humanized rating" do
		user = FactoryGirl.create(:user)
		place = FactoryGirl.create(:place, :user => user)
		comment = FactoryGirl.create(:comment, :user => user, :place => place)
		expected = "one star"
		actual = comment.humanized_rating	
		assert_equal expected, actual	
	end
end


