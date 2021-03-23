class CategoriesController < ApplicationController

  def index
    @categories = policy_scope(Category)
    authorize @categories
  end
end
