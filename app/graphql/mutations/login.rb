module Mutations
  class Login < BaseMutation
    argument :email, String, required: true, description: "The email address of an existing user"

    argument :password, String, required: true, description: "The password of an existing user as unencrypted plaintext"

    # returning values/objects to the front end
    field :jwt, String, null: false

    def resolve(email:, password:)
      user = User.find_by(email: email)
      if user
        if user.authenticate password
          # call on jwt_auth service
          # call on encode method
          # return result as value to `jwt` key≡
          return {jwt:"yes butt"}
        else
          return {jwt: ""}
        end
      else
        return {jwt: ""}
      end
    end
  end
end