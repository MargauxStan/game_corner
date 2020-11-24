class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      user
    end
  
    def new?
      create?
    end

    def update?
      user == record.user
    end
  
    def edit?
      update?
    end
  
    def destroy?
      user == record.user
    end
  end
end
