require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  
  it "logs in user when name is filled out" do
    visit sessions_new_path
    fill_in "name", with: "Bobby"
    find("input[value='login']").click

    expect(page).to have_content("Bobby")
  end
end
