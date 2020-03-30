require "series"

RSpec.describe Series do
  it "returns one slice of 1 digit" do
    series = Series.new("0")
    expect(series.slices(1)).to eq(["0"])
  end

  it "returns two slices of 2 digits" do
    series = Series.new("01")
    expect(series.slices(1)).to eq(["0", "1"])
  end
end
