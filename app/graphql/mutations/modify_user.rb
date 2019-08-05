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
        league = League.find_by(name: values[:league])

        if league
          new_values = values.to_h.merge(league_id: league.id)
                              .reject{ |k| k == :league }
          user.update(new_values)
        else
          user.league.destroy
          user.update(values.to_h)
        end
      end

      { user: user }
    end
  end
end
