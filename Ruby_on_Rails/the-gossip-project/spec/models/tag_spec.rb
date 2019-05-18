require 'rails_helper'

RSpec.describe Tag, type: :model do

before(:each) do
   @tag = Tag.create(title: "tag_title_grand")
 end

 context "validation" do

   it "is valid with valid attributes" do
     expect(@tag).to be_a(Tag)
     expect(@tag).to be_valid
   end
 end
=begin
describe "title" do
     it "should have a title with 10 length" do
       invalid_tag = Tag.create(title: "petit")
       expect(invalid_tag).not_to be_valid
       expect(invalid_tag.errors.include?(:title)).to eq(true)
       end
    end
=end
end