require 'test_helper'

class PetriDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petri_dish = petri_dishes(:one)
  end

  test "should get index" do
    get petri_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_petri_dish_url
    assert_response :success
  end

  test "should create petri_dish" do
    assert_difference('PetriDish.count') do
      post petri_dishes_url, params: { petri_dish: { mushroom_id: @petri_dish.mushroom_id, name: @petri_dish.name } }
    end

    assert_redirected_to petri_dish_url(PetriDish.last)
  end

  test "should show petri_dish" do
    get petri_dish_url(@petri_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_petri_dish_url(@petri_dish)
    assert_response :success
  end

  test "should update petri_dish" do
    patch petri_dish_url(@petri_dish), params: { petri_dish: { mushroom_id: @petri_dish.mushroom_id, name: @petri_dish.name } }
    assert_redirected_to petri_dish_url(@petri_dish)
  end

  test "should destroy petri_dish" do
    assert_difference('PetriDish.count', -1) do
      delete petri_dish_url(@petri_dish)
    end

    assert_redirected_to petri_dishes_url
  end
end
