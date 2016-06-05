require 'rspec'
require_relative '../lib/Validation'
v = Validation.new()
describe 'Size verification with empty right' do
  it { expect { v.EqualSize([1], [1]) }.to raise_error }
end
