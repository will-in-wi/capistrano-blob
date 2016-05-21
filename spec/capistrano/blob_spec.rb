require 'spec_helper'

RSpec.describe Capistrano::Blob do
  it 'has a version number' do
    expect(Capistrano::Blob::VERSION).not_to be nil
  end
end
