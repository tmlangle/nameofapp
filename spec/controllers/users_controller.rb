require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email:"cool@gmail.com",password:"123456") }
  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in user
        it "loads correct user details" do
          get :show
          expect(response).to be_ok
          expect(assigns(:user)).to eq user
        end

        context 'when a user is not logged in' do
          it 'redirects to login' do
            get :show, params: { id: user.id }
            expect(response).to redirect_to(root_path)
          end
        end
      end




    end
  end
end
