require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit new_post_path
    expect(page.status_code).to eq(200)
  end
  it 'renders HTML in the /new template' do
    visit new_post_path
    expect(page).to have_content('New Post Form')
  end
  it 'displays a new post form that redirects to the index page, which then contains the submitted posts title and description' do
    visit new_post_path
    fill_in 'post_title', with: 'NEW POST'
    fill_in 'post_description', with: 'Its freakin rad'
    click_on 'Submit'
    expect(page.current_path).to eq(posts_path)
    expect(page).to have_content('NEW POST')
    expect(page).to have_content('Its freakin rad')
  end
end