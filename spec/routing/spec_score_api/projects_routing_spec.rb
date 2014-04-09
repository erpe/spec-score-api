require "spec_helper"

module SpecScoreApi
  describe ProjectsController do
    describe "routing" do

      routes { SpecScoreApi::Engine.routes }

      it "routes to #index" do
        get("/projects").should route_to("spec_score_api/projects#index")
      end

      it "routes to #new" do
        get("/projects/new").should route_to("spec_score_api/projects#new")
      end

      it "routes to #show" do
        get("/projects/1").should route_to("spec_score_api/projects#show", id: "1")
      end

      it "routes to #edit" do
        get("/projects/1/edit").should route_to("spec_score_api/projects#edit", id: "1")
      end

      it "routes to #create" do
        post("/projects").should route_to("spec_score_api/projects#create")
      end

      it "routes to #update" do
        put("/projects/1").should route_to("spec_score_api/projects#update", id: "1")
      end

      it "routes to #destroy" do
        delete("/projects/1").should route_to("spec_score_api/projects#destroy", id: "1")
      end

    end
  end
end
