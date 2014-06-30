require 'spec_helper'

describe ApplicationHelper do
	describe "full_title" do
		it "should include the page title" do
			full_title("foo").should =~ /foo/
		end

		it "should include the base title" do
			full_title("foo").should =~ /^Ruby on Rail Tutorial Sample App/
		end

		it "should not include a bar for the home page" do
			full_title("").should_not =~ /\|/
		end
	end

	RSpec.configure do |config|
		config.include Devise::TestHelpers, :type => :controller
	end
end