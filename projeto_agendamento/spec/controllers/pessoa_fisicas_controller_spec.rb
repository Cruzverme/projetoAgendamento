require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PessoaFisicasController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # PessoaFisica. As you add validations to PessoaFisica, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PessoaFisicasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all pessoa_fisicas as @pessoa_fisicas" do
      pessoa_fisica = PessoaFisica.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:pessoa_fisicas)).to eq([pessoa_fisica])
    end
  end

  describe "GET show" do
    it "assigns the requested pessoa_fisica as @pessoa_fisica" do
      pessoa_fisica = PessoaFisica.create! valid_attributes
      get :show, {:id => pessoa_fisica.to_param}, valid_session
      expect(assigns(:pessoa_fisica)).to eq(pessoa_fisica)
    end
  end

  describe "GET new" do
    it "assigns a new pessoa_fisica as @pessoa_fisica" do
      get :new, {}, valid_session
      expect(assigns(:pessoa_fisica)).to be_a_new(PessoaFisica)
    end
  end

  describe "GET edit" do
    it "assigns the requested pessoa_fisica as @pessoa_fisica" do
      pessoa_fisica = PessoaFisica.create! valid_attributes
      get :edit, {:id => pessoa_fisica.to_param}, valid_session
      expect(assigns(:pessoa_fisica)).to eq(pessoa_fisica)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PessoaFisica" do
        expect {
          post :create, {:pessoa_fisica => valid_attributes}, valid_session
        }.to change(PessoaFisica, :count).by(1)
      end

      it "assigns a newly created pessoa_fisica as @pessoa_fisica" do
        post :create, {:pessoa_fisica => valid_attributes}, valid_session
        expect(assigns(:pessoa_fisica)).to be_a(PessoaFisica)
        expect(assigns(:pessoa_fisica)).to be_persisted
      end

      it "redirects to the created pessoa_fisica" do
        post :create, {:pessoa_fisica => valid_attributes}, valid_session
        expect(response).to redirect_to(PessoaFisica.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pessoa_fisica as @pessoa_fisica" do
        post :create, {:pessoa_fisica => invalid_attributes}, valid_session
        expect(assigns(:pessoa_fisica)).to be_a_new(PessoaFisica)
      end

      it "re-renders the 'new' template" do
        post :create, {:pessoa_fisica => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested pessoa_fisica" do
        pessoa_fisica = PessoaFisica.create! valid_attributes
        put :update, {:id => pessoa_fisica.to_param, :pessoa_fisica => new_attributes}, valid_session
        pessoa_fisica.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested pessoa_fisica as @pessoa_fisica" do
        pessoa_fisica = PessoaFisica.create! valid_attributes
        put :update, {:id => pessoa_fisica.to_param, :pessoa_fisica => valid_attributes}, valid_session
        expect(assigns(:pessoa_fisica)).to eq(pessoa_fisica)
      end

      it "redirects to the pessoa_fisica" do
        pessoa_fisica = PessoaFisica.create! valid_attributes
        put :update, {:id => pessoa_fisica.to_param, :pessoa_fisica => valid_attributes}, valid_session
        expect(response).to redirect_to(pessoa_fisica)
      end
    end

    describe "with invalid params" do
      it "assigns the pessoa_fisica as @pessoa_fisica" do
        pessoa_fisica = PessoaFisica.create! valid_attributes
        put :update, {:id => pessoa_fisica.to_param, :pessoa_fisica => invalid_attributes}, valid_session
        expect(assigns(:pessoa_fisica)).to eq(pessoa_fisica)
      end

      it "re-renders the 'edit' template" do
        pessoa_fisica = PessoaFisica.create! valid_attributes
        put :update, {:id => pessoa_fisica.to_param, :pessoa_fisica => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pessoa_fisica" do
      pessoa_fisica = PessoaFisica.create! valid_attributes
      expect {
        delete :destroy, {:id => pessoa_fisica.to_param}, valid_session
      }.to change(PessoaFisica, :count).by(-1)
    end

    it "redirects to the pessoa_fisicas list" do
      pessoa_fisica = PessoaFisica.create! valid_attributes
      delete :destroy, {:id => pessoa_fisica.to_param}, valid_session
      expect(response).to redirect_to(pessoa_fisicas_url)
    end
  end

end
