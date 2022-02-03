# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs for title' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K.Rowling'
    fill_in 'Price', with: '20.0'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
  
  scenario 'valid inputs for author' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K.Rowling'
    fill_in 'Price', with: '20.0'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K.Rowling')
   
  end

  scenario 'valid inputs for price' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K.Rowling'
    fill_in 'Price', with: '20.0'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20.0')
  end
  
  scenario 'valid inputs for published date' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K.Rowling'
    fill_in 'Price', with: '20.0'
    select '2022', :from => 'book_publishedDate_1i'
    select 'June', :from => 'book_publishedDate_2i'
    select '2', :from => 'book_publishedDate_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2022-06-02')
  end
  
end

