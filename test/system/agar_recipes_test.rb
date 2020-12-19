require "application_system_test_case"

class AgarRecipesTest < ApplicationSystemTestCase
  setup do
    @agar_recipe = agar_recipes(:one)
  end

  test "visiting the index" do
    visit agar_recipes_url
    assert_selector "h1", text: "Agar Recipes"
  end

  test "creating a Agar recipe" do
    visit agar_recipes_url
    click_on "New Agar Recipe"

    fill_in "Description", with: @agar_recipe.description
    fill_in "Method", with: @agar_recipe.method
    fill_in "Name", with: @agar_recipe.name
    fill_in "Recipe", with: @agar_recipe.recipe
    click_on "Create Agar recipe"

    assert_text "Agar recipe was successfully created"
    click_on "Back"
  end

  test "updating a Agar recipe" do
    visit agar_recipes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @agar_recipe.description
    fill_in "Method", with: @agar_recipe.method
    fill_in "Name", with: @agar_recipe.name
    fill_in "Recipe", with: @agar_recipe.recipe
    click_on "Update Agar recipe"

    assert_text "Agar recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Agar recipe" do
    visit agar_recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agar recipe was successfully destroyed"
  end
end
