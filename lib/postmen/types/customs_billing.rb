class Postmen
  module Types
    # Customs billing
    #
    # @see https://docs.postmen.com/api.html#customs-billing API Documentation
    class CustomsBilling < Dry::Struct
      attribute :paid_by, Types::PaidBy
      attribute :method, Types::PaymentMethod
    end
  end
end
