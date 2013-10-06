name              "gflags"
maintainer        "Brian Flad"
maintainer_email  "bflad417@gmail.com"
license           "Apache 2.0"
description       "Installs gflags"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1.1"
recipe            "gflags", "Installs gflags"
recipe            "gflags::archive", "Installs gflags via archive"
recipe            "gflags::package", "Installs gflags via package"
recipe            "gflags::package_cpp", "Installs gflags C++ packages"
recipe            "gflags::package_python", "Installs gflags Python packages"

%w{ centos fedora redhat ubuntu }.each do |os|
  supports os
end

%w{ apt build-essential yum }.each do |cb|
  depends cb
end
