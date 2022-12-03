# frozen_string_literal: true

# See the wiki for details:
# https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
      can :manage, :all
    elsif user.admin?
      # can :read, Company, user_id: user.id
      # can :update, Company, user_id: user.id
      can [:read, :update], Company, user_id: user.id
      # can [:read, :update], Company, user: user
    end
  end
end
