require 'secret_diary'

describe SecretDiary do
  it "constructs" do
    diary = double(:fake_diary, contents: "Today, it is cold")
    secret_diary = SecretDiary.new(diary)
    expect(secret_diary).to be
  end

  context "When locked" do
    it "#read will throw an error 'Go away!'" do
      diary = double :fake_diary
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end

  context "When unlocked" do
    it "#read will return diary's read method" do
      diary = double(:fake_diary, read: "Today, it is cold")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Today, it is cold"
    end
  end

  context "When unlocked and locked again" do
    it "#read will throw an error 'Go away!'" do
      diary = double(:fake_diary, read: "Today, it is cold")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "Today, it is cold"
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end