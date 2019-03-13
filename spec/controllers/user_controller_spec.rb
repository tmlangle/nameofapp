require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email:"bill@gmail.com",password:"999999") }
  context "standard users" do
    it "cannot access other users show page" do
      sign_in(:user, user)
      get :show, params: { id: user.id }
      expect(response).to eq "sorry not authorized"
      expect(response).to redirect_to(root_path)


    end




  end
end
