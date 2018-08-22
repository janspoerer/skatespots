class LikePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def upvote?
    @like.user == current_user
  end

  def downvote?
    upvote?
  end
end
