class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit]

  def index
    @ingredients = Ingredient.order(:name)
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    # no need for app/views/ingredients/update.html.erb
    redirect_to ingredient_path(@ingredient)
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :photo)
  end
end
