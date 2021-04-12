class OffersController < ApplicationController
  before_action :set_offer, only: [:show]

  skip_after_action :verify_authorized, only: [:index]
  after_action :verify_policy_scoped, only: [:index]

  def index
    @offers = policy_scope(Offer)
    @categories = policy_scope(Category)

    @nb_type_offer = @categories.length

  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.professional_id = current_user.id
    @offer.save
    authorize @offer

    if @offer.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    authorize @offer
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :localization, :category_id)
  end
end
