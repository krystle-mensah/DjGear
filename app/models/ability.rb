# below code (defining user permissions)
class Ability 
    include CanCan::Ability

    # (takes in a user object as a parameter, so permissions can be modified based on any user attributes.
    def initialize(user)
        user ||= User.new # guest user (not logged in)
        # action to the argument can. :manage matches any action on the User controller, meaning any user can manage (perform any action) with a User object. 
        can :manage, User, id: user.id
    end
end