require 'rails_helper'

describe 'user searches for a word' do
  it 'displays example sentences' do
    visit "/"
    save_and_open_page
    fill_in :q, with: "mindfulness"
    click_on "Submit"
    expect(current_path).to eq(words_path)

    save_and_open_page
    expect(page).to have_content("Examples for using 'mindfulness'")
    expect(page).to have_css(".sentence")
  end
# And I fill in a text box with "mindfulness"
# And I click "Submit"
# Then I should see a message that says "Examples for using 'mindfulness'"
# And I should see a list of sentences with examples of how to use the word
# And I should see only sentences where the region for usage is "Brittish" or "Canadian"
# And I should not see sentences for any other regions (or blank regions)


# <%= form_tag(words_path method: :get) do %>
#   <%= label_tag(:q, "Search for:") %>
#   <%= text_field_tag(:q) %>
#   <%= submit_tag("Submit") %>
# <% end %>
end
