class SpotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def upvote?
    user.present?
  end

  def downvote?
    upvote?
  end
end
