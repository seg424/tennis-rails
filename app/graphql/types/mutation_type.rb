module Types
  class MutationType < Types::BaseObject
    field :createUser, mutation: Mutations::CreateUser
    field :modifyUser, mutation: Mutations::ModifyUser
  end
end
