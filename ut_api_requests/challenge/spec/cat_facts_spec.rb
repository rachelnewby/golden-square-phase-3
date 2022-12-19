require 'cat_facts'

describe CatFacts do
  it "calls an API to provide facts about cats" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Florence Nightingale owned more than 60 cats in her lifetime.","length":61}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: Florence Nightingale owned more than 60 cats in her lifetime."
  end

  it "calls an API to provide facts about cats" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Cats have about 130,000 hairs per square inch (20,155 hairs per square centimeter).","length":83}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: Cats have about 130,000 hairs per square inch (20,155 hairs per square centimeter)."
  end
end