# Let's start by defining the ability for
# users to manage themselves.

# below code (defining user permissions)
class Ability 
    include CanCan::Ability

    # (takes in a user object as a parameter, so permissions can be modified based on any user attributes.
    def initialize(user)
        user ||= User.new # guest user (not logged in)
        if user.admin?
        	# The can method is used to define permissions. The first one is the action you're setting the permission for and the second one is the class of object you're setting it on.
            can:manage, :all
        else
	        # action to the argument can. :manage matches any action on the User controller, meaning any user can manage (perform any action) with a User object. 
	        can :manage, User, id: user.id
        end
    end
end