require 'rails_helper'

RSpec.describe Gossiptag, type: :model do

before(:each) do 
    @city = City.create(name: "Toulouse", zip_code: "31000")
      @user = User.create(first_name: "John", last_name: "Doe", description: "salut, c'est moiiii", email: "laulau@gmail.com", age: 23, city_id: @city.id)
    @gossip = Gossip.create(title: "Author", content: "Content", user_id: @user.id)
    @tag = Tag.create(title: "tag_title_grand")
    @gossiptag = Gossiptag.create(tag_id: @tag.id, gossip_id: @gossip.id)
  end

  context "validation" do

    it "is valid with valid attributes" do
      expect(@gossiptag).to be_a(Gossiptag)
      expect(@gossiptag).to be_valid
    end
  end

context "associations" do

    describe "gossiptag" do
      it "should have_many tagid" do
        gossiptag = Gossiptag.create(tag: @tag)
        expect(@tag.gossiptags.include?(gossiptag)).to eq(false)
      end
    end

  end
end