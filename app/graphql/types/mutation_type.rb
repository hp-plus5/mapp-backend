module Types
  class MutationType < Types::BaseObject     
    field :create_user, mutation: Mutations::CreateUser
    field :login, mutation: Mutations::Login,
      description: "Sign in as an existing user"
    # field :logout, mutation: Mutations::Logout,
    #   description: "Sign out"
    # field :resetPassword, mutation: Mutations::ResetPassword,
    #   description: "Reset the password of an existing user"
  end
end
