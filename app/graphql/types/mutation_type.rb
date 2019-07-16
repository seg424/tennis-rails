module Types
  class MutationType < Types::BaseObject
    field :createUser, mutation: Mutations::CreateUser
    field :modifyUser, mutation: Mutations::ModifyUser
    field :deleteUser, mutation: Mutations::DeleteUser
  end
end
