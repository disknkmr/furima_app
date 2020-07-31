require 'rails_helper'
  describe Product do
    describe "#create" do

    it "is valid with a name" do
      category = build(:category)
      expect(category).to be_valid
    end
  
    it "is invalid without a name" do
      category = build(:category, name: "")
      category.valid?
      expect(category.errors[:name]).to include("を入力してください")
    end



      it "" do
      end

    

    end
end
