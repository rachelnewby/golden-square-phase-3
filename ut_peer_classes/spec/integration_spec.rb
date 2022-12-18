require 'diary'
require 'secret_diary'

describe "Integration" do
  context "When SecretDiary initialized with Diary instance" do
    it "Raises error 'Go away!'" do
      diary = Diary.new("I don't like the cold")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end
