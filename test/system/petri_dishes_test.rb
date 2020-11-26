require "application_system_test_case"

class PetriDishesTest < ApplicationSystemTestCase
  setup do
    @petri_dish = petri_dishes(:one)
  end

  test "visiting the index" do
    visit petri_dishes_url
    assert_selector "h1", text: "Petri Dishes"
  end

  test "creating a Petri dish" do
    visit petri_dishes_url
    click_on "New Petri Dish"

    fill_in "Mushroom", with: @petri_dish.mushroom_id
    fill_in "Name", with: @petri_dish.name
    click_on "Create Petri dish"

    assert_text "Petri dish was successfully created"
    click_on "Back"
  end

  test "updating a Petri dish" do
    visit petri_dishes_url
    click_on "Edit", match: :first

    fill_in "Mushroom", with: @petri_dish.mushroom_id
    fill_in "Name", with: @petri_dish.name
    click_on "Update Petri dish"

    assert_text "Petri dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Petri dish" do
    visit petri_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Petri dish was successfully destroyed"
  end
end
