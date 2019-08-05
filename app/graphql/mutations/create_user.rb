# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    description "Creates a new user"

    argument :firstName, String, required: true
    argument :lastName, String, required: true
    argument :email, String, required: true
    argument :phone_number, String, required: false
    argument :admin, Boolean, required: false
    argument :status, Types::Enums::Status, required: false

    field :user, Types::User, null: false

    def resolve(first_name:, last_name:, email:, phone_number: nil, admin: nil, status: nil)
      user = User.create(
        first_name: first_name,
        last_name: last_name,
        email: email,
        phone_number: phone_number,
        admin: admin,
        status: status,
        league_id: 4
      )

      { user: user }
    end
  end
end
