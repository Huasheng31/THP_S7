require 'rails_helper'

RSpec.describe Gossip, type: :model do
 
 before(:each) do
     @city = City.create(name: "Toulouse", zip_code: "31000")
     @user = User.create(first_name: "John", last_name: "Doe", description: "salut, c'est moiiii", email: "laulau@gmail.com", age: 23, city_id: @city.id)
   @gossip = Gossip.create(title: "Author", content: "Content", user_id: @user.id)
 end

 context "validation" do

   it "is valid with valid attributes" do
     expect(@gossip).to be_a(Gossip)
     expect(@gossip).to be_valid
   end

   describe "#first_name" do
     it "should not be valid without first_name" do
       bad_gossip = Gossip.create(content: "Doe")
       expect(bad_gossip).not_to be_valid
       expect(bad_gossip.errors.include?(:title)).to eq(true)
     end
   end

   describe "#last_name" do
     it "should not be valid without last_name" do
       bad_gossip = Gossip.create(title: "John")
       expect(bad_gossip).not_to be_valid
       expect(bad_gossip.errors.include?(:content)).to eq(true)
     end
   end

 end
end