require 'rails_helper'

describe "the signin process", :type => :feature do
  before :each do
    User.create(:email => 'user@example.com', :password => 'caplin')
  end

  it "signs me in" do
    visit '/users/login'

    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'

    click_button 'Log In'
  end
end
