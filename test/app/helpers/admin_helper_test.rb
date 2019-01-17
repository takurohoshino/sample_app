require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class ContactApp::App::AdminHelperTest < Test::Unit::TestCase
  context "ContactApp::App::AdminHelper" do
    setup do
      @helpers = Class.new
      @helpers.extend ContactApp::App::AdminHelper
    end

    should "return nil" do
      assert_equal nil, @helpers.foo
    end
  end
end
