module Mutations
  class CreateUser < BaseMutation
    # often we will need input types for specific mutation
    # in those cases we can define those input types in the mutation class itself
    class AuthProviderSignupData < Types::BaseInputObject
      argument :credentials, Types::AuthProviderCredentialsInput, required: false
    end

    argument :auth_provider, AuthProviderSignupData, required: false

    type Types::UserType

    def resolve(auth_provider: nil)
      User.create!(
        email: auth_provider&.[](:credentials)&.[](:email),
        password: auth_provider&.[](:credentials)&.[](:password)
      )
      # call on jwt_auth service
      # call on encode method
      # return {jwt:"yes butt"}

      # i'm not sure yet how to tell the frontend WHICH user you are after successful login, but I think it may handle that on its own. It doesn't matter to the back end.
    end
  end
end