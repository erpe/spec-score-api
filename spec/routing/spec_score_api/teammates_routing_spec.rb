require "spec_helper"

module SpecScoreApi
  describe TeammatesController do
    describe "routing" do
      routes { SpecScoreApi::Engine.routes }
      it "routes to #index" do
        get("/projects/1/teammates").should route_to("spec_score_api/teammates#index", project_id: '1')
      end

      it "routes to #new" do
        get("/projects/1/teammates/new").should route_to("spec_score_api/teammates#new", project_id: '1')
      end

      it "routes to #show" do
        get("/projects/1/teammates/1").should route_to("spec_score_api/teammates#show", project_id: '1', id: "1")
      end

      it "routes to #edit" do
        get("/projects/1/teammates/1/edit").should route_to("spec_score_api/teammates#edit", project_id: '1', id: "1")
      end

      it "routes to #create" do
        post("/projects/1/teammates").should route_to("spec_score_api/teammates#create", project_id: '1')
      end

      it "routes to #update" do
        put("/projects/1/teammates/1").should route_to("spec_score_api/teammates#update", project_id: '1', id: "1")
      end

      it "routes to #destroy" do
        delete("/projects/1/teammates/1").should route_to("spec_score_api/teammates#destroy", project_id: '1', id: "1")
      end

    end
  end
end
