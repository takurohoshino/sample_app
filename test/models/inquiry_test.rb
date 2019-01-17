require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class InquiryTest < Test::Unit::TestCase
  context "Inquiry Model" do
    should 'construct new instance' do
      @inquiry = Inquiry.new
      assert_not_nil @inquiry
    end
  end
end
