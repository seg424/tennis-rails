# frozen_string_literal: true

module Types
  module InputObjects
    class UserInputs < BaseInputObject
      description "Allowed values for a player's status"

      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :email, String, required: false
      argument :phone_number, String, required: false
      argument :status, Types::Enums::Status, required: false
      argument :admin, Boolean, required: false
      argument :scorekeeper, Boolean, required: false
      argument :tennis_balls, Boolean, required: false
    end
  end
end
