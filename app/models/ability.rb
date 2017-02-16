class Ability
  include CanCan::Ability
  def initialize(user)
    can :read, :all                   # allow everyone to read everything
    if user.admin?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard, :manage, :update, :all          # allow access to dashboar
    end
  end
end
