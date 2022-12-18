require 'diary'
require 'secret_diary'

describe "Integration" do
  context "When SecretDiary initialized with Diary instance" do
    it "Secret_diary #read method raises error 'Go away!' when diary is locked" do
      diary = Diary.new("I don't like the cold")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end

    it "Secret_diary #read method reads content when diary is unlocked" do
      diary = Diary.new("I don't like the cold")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "I don't like the cold"
    end
  end
end
