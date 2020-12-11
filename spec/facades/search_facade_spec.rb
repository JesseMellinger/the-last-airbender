require 'rails_helper'

describe SearchFacade do
  context "class methods" do
    context ".get_members" do
      it "returns member object in array of given nation" do
        results = SearchFacade.get_members("fire+nation")
        expect(results).to be_a(Array)
        expect(results.first).to be_a(Member)
        expect(results.count).to eq(20)
      end
    end
  end
end
