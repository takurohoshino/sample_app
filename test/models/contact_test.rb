require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class ContactTest < Test::Unit::TestCase
  context "Contact Model" do
    should 'construct new instance' do
      @contact = Contact.new
      assert_not_nil @contact
    end
  end
end
