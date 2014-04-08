require 'spec_helper'

describe 'gflags::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
