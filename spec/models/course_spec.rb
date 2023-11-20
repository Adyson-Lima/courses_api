require "rails_helper"

RSpec.describe Course, type: :model do

  before{@course = Course.new}

  describe "Teste de preenchimento do model Course" do

    it "name consegue ser preenchido?" do
      @course.name = "eletronica level 1"
      expect(@course.name).to eq("eletronica level 1")
    end

    it "value consegue ser preenchido?" do
      @course.value = "570,00"
      expect(@course.value).to eq("570,00")
    end

  end

  describe "Teste de validação do model Course" do

    it "Course válido com campos obrigatórios preenchidos?" do
      @course.name = "Ruby iniciante"
      @course.value = "250,00"
      expect(@course).to be_valid
    end

  end

end
