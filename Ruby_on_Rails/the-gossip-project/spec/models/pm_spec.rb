require 'rails_helper'

RSpec.describe Pm, type: :model do

before(:each) do
    @city = City.create(name: "Toulouse", zip_code: "31000")
   @user = User.create(first_name: "John", last_name: "Doe", description: "salut, c'est moiiii", email: "laulau@gmail.com", age: 23, city_id: @city.id)
   @pm = Pm.create(content: "voici mon contenu", recipient_id: @user.id, sender_id: @user.id)
 end

 context "validation" do

   it "is valid with valid attributes" do
     expect(@pm).to be_a(Pm)
     expect(@pm).to be_valid
   end
 end

context "public instance methods" do

   describe "content" do

     it "should return a string" do
       expect(@pm.content).to be_a(String)
     end
    end
end

end