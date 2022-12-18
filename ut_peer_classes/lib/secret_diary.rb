class SecretDiary
  def initialize(diary)
    @diary = diary
    @locked = true
  end

  def read
    fail "Go away!" if @locked == true
  end
end