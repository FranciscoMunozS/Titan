# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    def initialize(user)
      user ||= User.new
      if user.client?
        # Aqui va todo lo relacionado a la administracion de los modelos que se vayan
        # incorporando al sistema.
        # E.G. "can :manage, Product, user.id: user.id"
      elsif user.admin?
        can :manage
      else
        can :read, :all
      end
    end
  end
end
