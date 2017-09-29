module Spree
  class ReferredRecord < Spree::Base
    belongs_to :referral, class_name: 'Spree::Referral'
    belongs_to :user, class_name: Spree.user_class.to_s
    belongs_to :affiliate
    belongs_to :store_credit

    validates_presence_of :user
  end
end
