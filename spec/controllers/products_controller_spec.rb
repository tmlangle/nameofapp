require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  context 'GET #index' do
    it 'should success and render to index page' do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template :index
    end
  end

  context 'GET #show' do
    let!(:product) { create :product }

    it 'should success and render to edit page' do
      get :show, params: { id: product.id }
      expect(response).to have_http_status(200)
      expect(response).to render_template :edit
    end
  end

  context 'POST #create' do
    let!(:product) { FactoryBot.create(:product) }

    it 'create a new product' do
      expect { post(:create, params: { product: params }) }.to change(Product, :count).by(1)
      expect(flash[:notice]).to eq 'Product was successfully created.'
    end
  end
    context 'PUT #update' do
      let!(:product) { create :product }

      it 'should update product info' do
        params = {
          name: 'nice turtle',
          price: 45
        }

        put :update, params: { id: product.id, product: params }
        product.reload
        params.keys.each do |key|
          expect(product.attributes[key.to_s]).to eq params[key]
        end
      end
    end

    context 'DELETE #destroy' do
      let!(:product) { create :product }

      it 'should delete product' do
        expect { delete :destroy, params: { id: product.id } }.to change(Product, :count).by(-1)
        expect(flash[:notice]).to eq 'Product was successfully deleted.'
      end
    end
end
