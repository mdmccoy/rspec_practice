require 'rails_helper'

feature 'Visiting the Login Page' do
  it 'shows a login form' do
    visit login_path
    find_field 'Email'
    find_field 'Password'
    find_button 'Login'
  end

  it 'and submitting that form logs a user in' do
    user = User.create(name: "Example Name", email: "Example@example.com", password: 'password')
    visit login_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Login'
    expect(current_path).to eq(root_path)
  end

  it 'visiting /logout will destroy the session' #do
  #this doesn't work, would need to find a way to do a feature test for logout. Right now its covered in the controller test.
    # user = User.create(name: "Example Name", email: "Example@example.com", password: 'password')
    #
    # visit logout_path
    #
    # expect(session[:user_id]). to eq(nil)
  #end
end
