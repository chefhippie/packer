#
# Cookbook Name:: packer
# Attributes:: default
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

default["packer"]["version"] = "0.7.1"
default["packer"]["package_file"] = "packer_#{node["packer"]["version"]}_linux_amd64.zip"
default["packer"]["package_url"] = "https://dl.bintray.com/mitchellh/packer/#{node["packer"]["package_file"]}"
default["packer"]["install_path"] = "/usr/local/bin"
