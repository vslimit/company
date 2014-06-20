require 'spec_helper'

describe 'editing CompanyInfos' do
  before do
    FactoryGirl.create(:company_info,:name => 'test')
    visit '/'
    click_link 'test'
    click_link 'Edit Company'
  end

  it 'Updating a company_info' do
    fill_in 'Name',with: 'test company'
    click_button 'Update Company'
    expect(page).to have_content('Company has been updated')
  end

  it 'Updating a company with invalid attributes is bad' do
    fill_in 'Name', with: ''
    click_button 'Update Company'
    expect(page).to have_content('Company has not been updated')
  end
end