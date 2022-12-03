# frozen_string_literal: true

# See the wiki for details:
# https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.admin?
    can :read, :all
  end
end
