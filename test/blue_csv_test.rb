require 'test_helper'

class BlueCsvTest < ActiveSupport::TestCase
  include Capybara::DSL
  
  test "csv requests sends a csv file" do
    visit '/home.csv'
    
    assert_equal 'text/csv',    headers["Content-Type"]
    assert_match 'attachment;', headers["Content-Disposition"]
  end
  
  protected
  
  def headers 
    page.response_headers
  end
end
