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

  describe "POST /api/v1/courses" do
    it "Consegue criar um course e retornar status 201?" do
      post :create, params: {course: {name: "introdução ao rails", value: "250,00"}, format: :json}
      expect(response.body).to include_json(name: "introdução ao rails")
      expect(response).to have_http_status(201)
    end
  end

  describe "PATCH /api/v1/courses/id" do
    it "Consegue atualizar um course e retornar status 200?" do
      course = Course.last
      patch :update, params: {course: {name: "curso de java", value: "320,00"}, id: course.id}
      expect(response.body).to include_json(name: "curso de java")
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /api/v1/courses/id" do
    it "Consegue excluir um course e retornar status 204?" do
      course = Course.last
      delete :destroy, params: {id: course.id}
      expect(Course.all).not_to include(course)
      expect(response).to have_http_status(204)
    end
  end

end
