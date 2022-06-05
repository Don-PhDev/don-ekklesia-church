require "rails_helper"

RSpec.describe PostsController, :type => :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  context "without render_views" do
    describe "GET index" do
      it "renders the RSpec generated template" do
        get :index
        expect(response.body).to eq("")
      end
    end
  end
end
