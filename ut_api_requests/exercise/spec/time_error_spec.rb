require 'time_error'

describe TimeError do
  it "returns the difference between the server time and time on this computer" do
    fake_requester = double :requester 
    allow(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
      ).and_return('{"abbreviation":"GMT","client_ip":"51.148.165.106","datetime":"2022-12-19T14:23:09.505879+00:00","day_of_week":1,"day_of_year":353,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1671459789,"utc_datetime":"2022-12-19T14:23:09.505879+00:00","utc_offset":"+00:00","week_number":51}')
    time = Time.new(2022, 12, 19, 14, 23, 9)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.505879
  end

end