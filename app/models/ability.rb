class Ability
  include CanCan::Ability
  
  def initialize(thisuser)
    thisuser ||= User.new # guest account
    
    if thisuser.has_role? :manager
      can :manage, :all
      can :create, RepairRequest
      can [:index, :manage], RepairRequest, :submitter_id => thisuser.id
    else
      if thisuser.has_role? :renter
        can :manage, thisuser
        can :create, RepairRequest
        can [:index, :manage], RepairRequest, :submitter_id => thisuser.id
      end
      can :index, User
      can :create, User
    end
  end
end
