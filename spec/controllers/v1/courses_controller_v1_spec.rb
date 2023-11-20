require "rails_helper"

RSpec.describe Api::V1::CoursesController, type: :controller do

  before {@course = Course.create(name: "curso de python", value: "300,00")}

  describe "GET /api/v1/courses" do
    it "Consegue listar todos os courses e retornar status 200?" do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end
