require "rails_helper"

RSpec.describe CollectbooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/collectbooks").to route_to("collectbooks#index")
    end

    it "routes to #new" do
      expect(get: "/collectbooks/new").to route_to("collectbooks#new")
    end

    it "routes to #show" do
      expect(get: "/collectbooks/1").to route_to("collectbooks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/collectbooks/1/edit").to route_to("collectbooks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/collectbooks").to route_to("collectbooks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/collectbooks/1").to route_to("collectbooks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/collectbooks/1").to route_to("collectbooks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/collectbooks/1").to route_to("collectbooks#destroy", id: "1")
    end
  end
end
