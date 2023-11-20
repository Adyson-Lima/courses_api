require "rails_helper"

RSpec.describe Course, type: :model do

  before{@course = Course.new}

  describe "Teste de preenchimento do model Course" do

    it "name consegue ser preenchido?" do
      @course.name = "eletronica level 1"
      expect(@course.name).to eq("eletronica level 1")
    end

    it "value consegue ser preenchido?" do
      @course.value = ""
      expect(@course.value).to eq("570,00")
    end

  end

end
