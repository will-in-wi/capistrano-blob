require 'spec_helper'

describe Capistrano::Blob do
  it 'has a version number' do
    expect(Capistrano::Blob::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
