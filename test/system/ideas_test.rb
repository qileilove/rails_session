require "application_system_test_case"

class IdeasTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit ideas_url

    click_on "New Article"

    fill_in "Title", with: "Creating an Article"
    fill_in "Body", with: "Created this article successfully!"

    click_on "Create Article"


  end
end
