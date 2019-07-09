# frozen_string_literal: true

module Mutations
  class ModifyUser < BaseMutation
    description "Modifies information for an existing user"

    argument :id, ID, required: true
    argument :values, Types::InputObjects::UserInputs, required: false

    field :user, Types::User, null: false

    def resolve(id:, values:)
      user = User.find(id)

      # error handling
      if user
        user.update(values.to_h)
      end

      { user: user }
    end
  end
end
