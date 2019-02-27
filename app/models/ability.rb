class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id

    if user.role?(:admin)
    can :manage, :destroy, :all
    end
  end
end
