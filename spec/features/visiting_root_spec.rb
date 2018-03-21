require 'rails_helper'

feature "Visiting root" do
  it 'when not logged in redirects to a registration page' do
    visit root_path
    expect(current_path).to eq('/register')
  end

  it 'when logged in shows a welcome message'
end
