class AgarRecipesController < ApplicationController
  before_action :set_agar_recipe, only: [:show, :edit, :update, :destroy]

  # GET /agar_recipes
  # GET /agar_recipes.json
  def index
    @agar_recipes = AgarRecipe.all
  end

  # GET /agar_recipes/1
  # GET /agar_recipes/1.json
  def show
  end

  # GET /agar_recipes/new
  def new
    @agar_recipe = AgarRecipe.new
  end

  # GET /agar_recipes/1/edit
  def edit
  end

  # POST /agar_recipes
  # POST /agar_recipes.json
  def create
    @agar_recipe = AgarRecipe.new(agar_recipe_params)

    respond_to do |format|
      if @agar_recipe.save
        format.html { redirect_to @agar_recipe, notice: 'Agar recipe was successfully created.' }
        format.json { render :show, status: :created, location: @agar_recipe }
      else
        format.html { render :new }
        format.json { render json: @agar_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agar_recipes/1
  # PATCH/PUT /agar_recipes/1.json
  def update
    respond_to do |format|
      if @agar_recipe.update(agar_recipe_params)
        format.html { redirect_to @agar_recipe, notice: 'Agar recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @agar_recipe }
      else
        format.html { render :edit }
        format.json { render json: @agar_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agar_recipes/1
  # DELETE /agar_recipes/1.json
  def destroy
    @agar_recipe.destroy
    respond_to do |format|
      format.html { redirect_to agar_recipes_url, notice: 'Agar recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agar_recipe
      @agar_recipe = AgarRecipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agar_recipe_params
      params.require(:agar_recipe).permit(:name, :recipe, :method, :description,:petri_dish_id,:abbreviation)
    end
end
