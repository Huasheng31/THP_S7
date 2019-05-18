 require 'rails_helper'

RSpec.describe City, type: :model do

before(:each) do
   @city = City.create(name: "Toulouse", zip_code: "31000")
 end

 context "validation" do

   it "is valid with valid attributes" do
     expect(@city).to be_a(City)
     expect(@city).to be_valid
   end
end
=begin
describe "zip_code" do
     it "should be to the french format" do
       invalid_city = City.create(name: "Toulouse", zip_code: "310")
       expect(invalid_city).not_to be_valid
       expect(invalid_city.errors.include?(:zip_code)).to eq(true)
     end
   end
=end
end
