class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: :show
  after_action :verify_policy_scoped, only: :show

  def show
    @categories = policy_scope(Category)
    # authorize :dashboard, :show?
    # @categories = Category.all
    #authorize @categories
  end
end
