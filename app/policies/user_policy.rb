class UserPolicy < ApplicationPolicy
  def edit?
    update?
  end

  def update?
    true
  end

  def profile_owner?
    record.id == user.id || params[:id]
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
