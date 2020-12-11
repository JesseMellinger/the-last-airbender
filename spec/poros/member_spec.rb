require "rails_helper"

RSpec.describe Member do
  it "exists" do
    attrs = {
             :_id=>"5cf5679a915ecad153ab68fd",
             :allies=>["Ozai"],
             :enemies=>["Earth Kingdom"],
             :name=>"Chan (Fire Nation admiral)",
             :affiliation=>"Fire Nation Navy",
             :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819"
            }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.allies).to eq("Ozai")
    expect(member.enemies).to eq("Earth Kingdom")
    expect(member.name).to eq("Chan (Fire Nation admiral)")
    expect(member.affiliation).to eq("Fire Nation Navy")
    expect(member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
