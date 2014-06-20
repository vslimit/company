require 'spec_helper'

describe 'Viewing company_infos' do
  it 'Listing all company_infos' do
    company_info = FactoryGirl.create(:company_info, :name => 'test')
    visit '/'
    click_link 'test'
    expect(page.current_url).to eql(company_info_url(company_info))
  end
end