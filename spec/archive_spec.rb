require 'spec_helper'

describe 'gflags::archive' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
