class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    user
  end

  def new?
    create?
  end

  def destroy?
    user == record.user
  end
end
