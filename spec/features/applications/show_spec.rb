require 'rails_helper'

RSpec.describe 'Applications Show Page', type: :feature do
  it 'can list applicant attributes' do
    jane_smith = Application.create!(name: "Jane Smith", street_address: "2104 Lake Elmo Drive", city: "Billings", state: "MT", zip_code: 59105, description: "I love animals.", pets_applied_for: "Tracy", application_status: "pending")

    visit "/applications/#{jane_smith.id}"
    expect(page).to have_content("Jane Smith")
    expect(page).to have_content("2104 Lake Elmo Drive Billings, MT 59105")
    expect(page).to have_content("I love animals.")
    expect(page).to have_content("Tracy")
    expect(page).to have_content("pending")
  end
end      
      
