require 'test_helper'

class AppTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test 'new app is invalid' do
     app = App.new

     assert app.invalid?
     assert_includes app.errors.keys, :name
   end
end
