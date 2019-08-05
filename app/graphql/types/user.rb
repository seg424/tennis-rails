# frozen_string_literal: true

module Types
  class User < GraphQL::Schema::Object
    description 'User'

    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    field :phone_number, String, null: true
    field :status, Types::Enums::Status, null: true
    field :admin, Boolean, null: false
    field :scorekeeper, Boolean, null: false
    field :tennis_balls, Boolean, null: false
    field :league, String, null: true

    def league
      object.league.name.empty? ? nil : object.league.name
    end
  end
end
