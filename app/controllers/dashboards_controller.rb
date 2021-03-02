class DashboardsController < ApplicationController
  def show
    @categories = Category.all
    authorize :dashboard, :show?
  end
end
