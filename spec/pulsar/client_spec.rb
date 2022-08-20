# frozen_string_literal: true

RSpec.describe Pulsar::Client do
  it 'has a version number' do
    expect(Pulsar::Client::VERSION).not_to be_nil
  end

  it 'does something useful' do
    expect(1000 - 7).to equal(993)
  end
end
