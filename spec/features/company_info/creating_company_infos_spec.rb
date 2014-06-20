require 'spec_helper'

describe 'Creating CompanyInfos' do

  before do
    visit '/'
    click_link 'New Company'
  end

  it 'can create a company' do
    fill_in 'Name',with:'company'
    fill_in 'Description',with:'Description'
    click_button 'Create Company'
    expect(page).to have_content('Company has been created.')

    company_info = CompanyInfo.where(name: 'company').first
    expect(page.current_url).to eql(company_info_url(company_info))
    title = 'company - Companys'
    expect(page).to have_title(title)
  end

  it 'can not create a company_info without a name' do
    click_button 'Create Company'
    expect(page).to have_content('Company has not been created.')
    expect(page).to have_content("Name can't be blank")
  end
end
