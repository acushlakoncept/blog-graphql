# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :full_name, String
    field :full_address, String
    field :first_name, String
    field :last_name, String
    field :address, String
    field :postcode, String
    field :city, String
    field :country, String
    field :posts, [Types::PostType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
