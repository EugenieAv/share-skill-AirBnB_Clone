class CategoryPolicy < ApplicationPolicy
  attr_reader :user, :category

  def initialize(user, category)
    @user = user
    @category = category
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    true
  end

  def show
    true
  end

  def create?
    user.admin == true
  end

  def new?
    create?
  end

  def update?
    user.admin == true
  end

  def edit?
    update?
  end

  def destroy?
    user.admin == true
  end
end
