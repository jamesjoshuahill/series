require "series"

RSpec.describe Series do
  it "returns one slice for 1 digit" do
    series = Series.new("0")
    expect(series.slices(1)).to eq(["0"])
  end
end
