require 'rspec'
require_relative '../lib/Validation'

v = Validation.new()

describe "Size verification with empty right" do
  it "raises" do
    expect { v.EqualSize([1], []) }.to raise_error(ArgumentError)
  end
end

describe "Size verification with left right" do
  it "raises" do
    expect { v.EqualSize([], [1]) }.to raise_error(ArgumentError)
  end
end

describe "Size verification with both empty" do
  it "succeeds" do
    expect { v.EqualSize([], []) }.not_to raise_error
  end
end

describe "Size verification with size 1, different values" do
  it "succeeds" do
    expect { v.EqualSize([1], [0]) }.not_to raise_error
  end
end

describe "Size verification with both size 1, same values" do
  it "succeeds" do
    expect { v.EqualSize([1], [1]) }.not_to raise_error
  end
end
