class RecipesController < ApplicationController
  def index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to recipe_path(@recipe)  #レシピの詳細画面に繊維(どのレシピに繊維するのか指定)
  end

  def edit
  end

  private
  def recipe_params
    params.require(:recipe).permit(:recipe_title, :recipe_details, :image )
  end
end
