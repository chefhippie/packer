#
# Cookbook Name:: packer
# Recipe:: source
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

remote_file ::File.join(Chef::Config[:file_cache_path], node["packer"]["source"]["package_file"]) do
  source node["packer"]["source"]["package_url"]
  action :create_if_missing
end

bash "packer_install" do
  code <<-EOH
    unzip #{node["packer"]["source"]["package_file"]} -d #{node["packer"]["source"]["install_path"]}
  EOH

  cwd Chef::Config[:file_cache_path]
  action :run

  only_if do
    %x(/usr/local/bin/packer version).chomp("") !~ /#{node["packer"]["source"]["version"]}$/
  end

  not_if do
    ::File.exists? ::File.join(node["packer"]["source"]["install_path"], "packer")
  end
end
