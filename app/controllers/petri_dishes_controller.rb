class PetriDishesController < ApplicationController
  before_action :set_petri_dish, only: [:show, :edit, :update, :destroy]

  # GET /petri_dishes
  # GET /petri_dishes.json
  def index
    @petri_dishes = PetriDish.all
  end

  # GET /petri_dishes/1
  # GET /petri_dishes/1.json
  def show
  end

  # GET /petri_dishes/new
  def new
    @petri_dish = PetriDish.new
  end

  # GET /petri_dishes/1/edit
  def edit
  end

  # POST /petri_dishes
  # POST /petri_dishes.json
  def create
    @petri_dish = PetriDish.new(petri_dish_params)

    respond_to do |format|
      if @petri_dish.save
        format.html { redirect_to @petri_dish, notice: 'Petri dish was successfully created.' }
        format.json { render :show, status: :created, location: @petri_dish }
      else
        format.html { render :new }
        format.json { render json: @petri_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petri_dishes/1
  # PATCH/PUT /petri_dishes/1.json
  def update
    respond_to do |format|
      if @petri_dish.update(petri_dish_params)
        format.html { redirect_to @petri_dish, notice: 'Petri dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @petri_dish }
      else
        format.html { render :edit }
        format.json { render json: @petri_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petri_dishes/1
  # DELETE /petri_dishes/1.json
  def destroy
    @petri_dish.destroy
    respond_to do |format|
      format.html { redirect_to petri_dishes_url, notice: 'Petri dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petri_dish
      @petri_dish = PetriDish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def petri_dish_params
      params.require(:petri_dish).permit(:name, :inoculated, :inoculated_at, :run_started, :run_started_at, :fully_colonized, :fully_colonized_at, :recipe, :description, :protocol, :mushroom_id, :agar_recipe_id, :sample)
    end
end
