require "spec_helper"

module SpecScoreApi
  describe ScoresController do
    describe "routing" do

      routes { SpecScoreApi::Engine.routes }

      it "routes to #index" do
        get("/scores").should route_to("spec_score_api/scores#index")
      end

      it "routes to #new" do
        get("/scores/new").should route_to("spec_score_api/scores#new")
      end

      it "routes to #show" do
        get("/scores/1").should route_to("spec_score_api/scores#show", id: "1")
      end

      it "routes to #edit" do
        get("/scores/1/edit").should route_to("spec_score_api/scores#edit", id: "1")
      end

      it "routes to #create" do
        post("/scores").should route_to("spec_score_api/scores#create")
      end

      it "routes to #update" do
        put("/scores/1").should route_to("spec_score_api/scores#update", id: "1")
      end

      it "routes to #destroy" do
        delete("/scores/1").should route_to("spec_score_api/scores#destroy", id: "1")
      end

    end
  end
end
