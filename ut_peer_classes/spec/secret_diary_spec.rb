require 'secret_diary'

describe SecretDiary do
  it "constructs" do
    diary = double(:fake_diary, contents: "Today, it is cold")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary).to be
  end

  context "When locked" do
    it "When locked #read will throw an error 'Go away!'" do
      diary = double(:fake_diary, contents: "Today, it is cold")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end