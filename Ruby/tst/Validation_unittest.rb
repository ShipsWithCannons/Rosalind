require 'rspec'
require_relative '../lib/Validation'

v = Validation.new()

describe "Size verification with empty right" do
  it "raises" do
    expect { v.EqualSize([1], []) }.to raise_error(ArgumentError)
  end
end
