class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user == record.user
  end
  
  def create?
    user
  end

  def new?
    create?
  end

  def accepted?
    user == record.user
  end

  def declined?
    user == record.user
  end
end
