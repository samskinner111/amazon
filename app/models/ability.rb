class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)                   
    if user.admin? 
      can :manage, Product
    elsif user.guest?
      can :show, Product
    end
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
