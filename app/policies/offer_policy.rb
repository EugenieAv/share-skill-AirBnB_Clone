class OfferPolicy < ApplicationPolicy
  attr_reader :user, :offer

  def initialize(user, offer)
    @user = user
    @offer = offer
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def new?
    create?
  end
end
