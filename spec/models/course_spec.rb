#require "rails_helper"

RSpec.describe Course, type: :model do

  before{@course = Course.new}

  describe "Teste de preenchimento do model Course" do

    it "name consegue ser preenchido?" do
      @course.name = ""
      expect(@course.name).to eq("eletronica level 1")
    end

  end

end
