class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    alias_action :create, :read, :update, :destroy, to: :crud

    if user.is_a?(User::Admin)
      can :manage, :all
    elsif user.is_a?(User::Viewer)
      can :purchase, Product
      can :confirm, Product
      can :purchase_confirm, Product
      can :create, InvoiceBill
    end
    can :read, InvoiceBill
    cannot :update, InvoiceBill
    cannot :destroy, InvoiceBill
  end
end
