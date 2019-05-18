require 'rails_helper'

RSpec.describe User, type: :model do

before(:each) do
    @city = City.create(name: "Toulouse", zip_code: "31000")
   @user = User.create(first_name: "John", last_name: "Doe", description: "salut, c'est moiiii", email: "laulau@gmail.com", age: 23, city_id: @city.id)
 end

 context "validation" do

   it "is valid with valid attributes" do
     expect(@user).to be_a(User)
     expect(@user).to be_valid
   end

   describe "#first_name" do
     it "should not be valid without first_name" do
       bad_user = User.create(last_name: "Doe")
       expect(bad_user).not_to be_valid
       # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name.
       expect(bad_user.errors.include?(:first_name)).to eq(true)
     end
   end
end
end