require 'spec_helper'

describe 'Deleting company_info' do

  it 'Deleting a company_info' do
    FactoryGirl.create(:company_info,:name=>'aaa')
    visit '/'
    click_link 'aaa'
    click_link 'Delete Company'
    expect(page).to have_content('Company has been destroyed')

    visit '/'
    expect(page).to have_no_content('aaa')
  end
end