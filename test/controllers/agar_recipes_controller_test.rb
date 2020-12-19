require 'test_helper'

class AgarRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agar_recipe = agar_recipes(:one)
  end

  test "should get index" do
    get agar_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_agar_recipe_url
    assert_response :success
  end

  test "should create agar_recipe" do
    assert_difference('AgarRecipe.count') do
      post agar_recipes_url, params: { agar_recipe: { description: @agar_recipe.description, method: @agar_recipe.method, name: @agar_recipe.name, recipe: @agar_recipe.recipe } }
    end

    assert_redirected_to agar_recipe_url(AgarRecipe.last)
  end

  test "should show agar_recipe" do
    get agar_recipe_url(@agar_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_agar_recipe_url(@agar_recipe)
    assert_response :success
  end

  test "should update agar_recipe" do
    patch agar_recipe_url(@agar_recipe), params: { agar_recipe: { description: @agar_recipe.description, method: @agar_recipe.method, name: @agar_recipe.name, recipe: @agar_recipe.recipe } }
    assert_redirected_to agar_recipe_url(@agar_recipe)
  end

  test "should destroy agar_recipe" do
    assert_difference('AgarRecipe.count', -1) do
      delete agar_recipe_url(@agar_recipe)
    end

    assert_redirected_to agar_recipes_url
  end
end
