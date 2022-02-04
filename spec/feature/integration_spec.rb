# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_collectbook_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Sung Rung Yoo'
    fill_in 'Price', with: '10'
    select '2021', :from => 'collectbook_time_1i'
    select 'March', :from => 'collectbook_time_2i'
    select '26', :from => 'collectbook_time_3i'
    click_on 'Create Collectbook'
    visit collectbooks_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('Sung Rung Yoo')
    expect(page).to have_content('10')
  end
end







