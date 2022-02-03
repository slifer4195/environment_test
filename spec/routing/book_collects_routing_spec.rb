require "rails_helper"

RSpec.describe BookCollectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/book_collects").to route_to("book_collects#index")
    end

    it "routes to #new" do
      expect(get: "/book_collects/new").to route_to("book_collects#new")
    end

    it "routes to #show" do
      expect(get: "/book_collects/1").to route_to("book_collects#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/book_collects/1/edit").to route_to("book_collects#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/book_collects").to route_to("book_collects#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/book_collects/1").to route_to("book_collects#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/book_collects/1").to route_to("book_collects#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/book_collects/1").to route_to("book_collects#destroy", id: "1")
    end
  end
end
