require 'rspec'
require './lib/node'

RSpec.describe Node do
  
  it 'has node' do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
  end
end