require "series"

RSpec.describe Series do
  it "slices 1 digit into 1 slice of 1" do
    series = Series.new("0")
    expect(series.slices(1)).to eq(["0"])
  end

  it "slices 2 digits into 2 slices of 1" do
    series = Series.new("01")
    expect(series.slices(1)).to eq(["0", "1"])
  end

  it "slices 2 digits into 1 slices of 2" do
    series = Series.new("01")
    expect(series.slices(2)).to eq(["01"])
  end

  it "slices 3 digits into 2 slices of 2" do
    series = Series.new("012")
    expect(series.slices(2)).to eq(["01", "12"])
  end
end
