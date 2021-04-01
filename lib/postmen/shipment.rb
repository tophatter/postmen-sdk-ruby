class Postmen
  # Shipment object
  #
  # @see https://docs.postmen.com/api.html#shipment API documentation
  class Shipment < Dry::Struct
    attribute :ship_from, Types::Address
    attribute :ship_to, Types::Address
    attribute :parcels, Types::Array.of(Parcel)

    # Converts object to hash
    # @return [Hash]
    def to_hash
      super.reject { |_k, v| v.nil? }
    end
  end
end
