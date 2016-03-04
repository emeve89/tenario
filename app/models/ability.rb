class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can [:read, :create], Blog
      can [:update, :destroy], Blog do |blog|
        blog.users.include? user
      end
    else
      can :read, Blog
    end
  end
end
