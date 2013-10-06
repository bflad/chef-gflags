require File.expand_path('../support/helpers', __FILE__)

describe_recipe "gflags::package_python" do
  include Helpers::Gflags

  gflags_packages_python.each do |p|
    it "installs #{p} package" do
      package(p).must_be_installed
    end
  end
end
