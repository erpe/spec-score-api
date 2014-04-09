require "spec_helper"

module SpecScoreApi
  describe UsersController do
    describe "routing" do
      routes { SpecScoreApi::Engine.routes }

      it "routes to #index" do
        get("/users").should route_to("spec_score_api/users#index")
      end

      it "routes to #new" do
        get("/users/new").should route_to("spec_score_api/users#new")
      end

      it "routes to #show" do
        get("/users/1").should route_to("spec_score_api/users#show", id: "1")
      end

      it "routes to #edit" do
        get("/users/1/edit").should route_to("spec_score_api/users#edit", id: "1")
      end

      it "routes to #create" do
        post("/users").should route_to("spec_score_api/users#create")
      end

      it "routes to #update" do
        put("/users/1").should route_to("spec_score_api/users#update", id: "1")
      end

      it "routes to #destroy" do
        delete("/users/1").should route_to("spec_score_api/users#destroy", id: "1")
      end

    end
  end
end
