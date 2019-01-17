require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class ContactApp::App::LoginsHelperTest < Test::Unit::TestCase
  context "ContactApp::App::LoginsHelper" do
    setup do
      @helpers = Class.new
      @helpers.extend ContactApp::App::LoginsHelper
    end

    should "return nil" do
      assert_equal nil, @helpers.foo
    end
  end
end
