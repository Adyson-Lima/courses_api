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

  describe "GET /api/v1/courses/id" do
    it "Consegue listar um course especifico e retornar status 200?" do
      get :show, params: {id: @course.id}
      expect(response.body).to include_json(id: @course.id)
      expect(response).to have_http_status(200)
    end
  end

end
