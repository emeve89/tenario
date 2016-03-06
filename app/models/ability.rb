class Ability
  include CanCan::Ability

  def initialize(user)
    current_blog = Blog.find_by(slug: Apartment::Tenant.current)

    if user
      can :read, Post
      if current_blog && current_blog.users.include?(user)
        can [:create, :update, :destroy], Post
      end
      can [:read, :create], Blog
      can [:update, :destroy], Blog do |blog|
        blog.users.include? user
      end
    else
      can :read, Post
      can :read, Blog
    end
  end
end
