require 'rails_helper'

describe AirbenderDataService do
  context "class methods" do
    context ".members_of_nation" do
      it "returns member data for given nation" do
        search = AirbenderDataService.members_of_nation("fire+nation")
        expect(search).to be_a Array
        expect(search.first).to be_a Hash
        member_data = search.second

        expect(member_data).to have_key :allies
        expect(member_data[:allies]).to be_a(Array)

        expect(member_data).to have_key :enemies
        expect(member_data[:enemies]).to be_a(Array)

        expect(member_data).to have_key :name
        expect(member_data[:name]).to be_a(String)

        expect(member_data).to have_key :affiliation
        expect(member_data[:affiliation]).to be_a(String)

        expect(member_data).to have_key :photoUrl
        expect(member_data[:photoUrl]).to be_a(String)
      end
    end
  end
end
