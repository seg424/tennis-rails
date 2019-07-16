# frozen_string_literal: true

module Mutations
  class DeleteUser < BaseMutation
    description "Deletes a user"

    argument :id, ID, required: true

    field :success, Boolean, null: false

    def resolve(id:)
      User.find(id).destroy

      { success: true }
    end
  end
end
