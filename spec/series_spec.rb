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

  it "slices 6 digits into 4 slices of 3" do
    series = Series.new("982347")
    expect(series.slices(3)).to eq(["982", "823", "234", "347"])
  end

  it "fails when slice length is greater than digits length" do
    series = Series.new("01234")
    expect { series.slices(6) }.to raise_error(ArgumentError)
  end
end
