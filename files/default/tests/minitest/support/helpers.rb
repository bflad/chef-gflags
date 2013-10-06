module Helpers
  module Gflags
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources

    def gflags_packages_cpp
      value_for_platform(
        %w{centos fedora redhat} => {
          "default" => %w{gflags gflags-devel}
        },
        %w{ubuntu} => {
          "default" => %w{libgflags2 libgflags-dev}
        }
      )
    end

    def gflags_packages_python
      value_for_platform(
        %w{centos fedora redhat} => {
          "default" => %w{gflags-python}
        },
        %w{ubuntu} => {
          "default" => %w{python-gflags}
        }
      )
    end
  end
end
