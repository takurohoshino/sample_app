require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class ContactApp::App::InquiryHelperTest < Test::Unit::TestCase
  context "ContactApp::App::InquiryHelper" do
    setup do
      @helpers = Class.new
      @helpers.extend ContactApp::App::InquiryHelper
    end

    should "return nil" do
      assert_equal nil, @helpers.foo
    end
  end
end
