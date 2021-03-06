 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/discussions", type: :request do
  
  # Discussion. As you add validations to Discussion, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Discussion.create! valid_attributes
      get discussions_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      discussion = Discussion.create! valid_attributes
      get discussion_url(discussion)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_discussion_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      discussion = Discussion.create! valid_attributes
      get edit_discussion_url(discussion)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Discussion" do
        expect {
          post discussions_url, params: { discussion: valid_attributes }
        }.to change(Discussion, :count).by(1)
      end

      it "redirects to the created discussion" do
        post discussions_url, params: { discussion: valid_attributes }
        expect(response).to redirect_to(discussion_url(Discussion.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Discussion" do
        expect {
          post discussions_url, params: { discussion: invalid_attributes }
        }.to change(Discussion, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post discussions_url, params: { discussion: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested discussion" do
        discussion = Discussion.create! valid_attributes
        patch discussion_url(discussion), params: { discussion: new_attributes }
        discussion.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the discussion" do
        discussion = Discussion.create! valid_attributes
        patch discussion_url(discussion), params: { discussion: new_attributes }
        discussion.reload
        expect(response).to redirect_to(discussion_url(discussion))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        discussion = Discussion.create! valid_attributes
        patch discussion_url(discussion), params: { discussion: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested discussion" do
      discussion = Discussion.create! valid_attributes
      expect {
        delete discussion_url(discussion)
      }.to change(Discussion, :count).by(-1)
    end

    it "redirects to the discussions list" do
      discussion = Discussion.create! valid_attributes
      delete discussion_url(discussion)
      expect(response).to redirect_to(discussions_url)
    end
  end
end
