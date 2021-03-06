class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show, :edit]
    skip_before_action :authenticate_user!, only: :show

  def index
    @categories = Recipe.order(:name)
  end

  def show
  end

  def new
    @recipe = Recipe.new
    # @ingredients = Ingredient.order(:name)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    # no need for app/views/recipes/update.html.erb
    redirect_to recipe_path(@recipe)
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :prep_time, :ingredients_list, :preparation, :category_id, :photo, :source, ingredient_ids: [])
  end
end
