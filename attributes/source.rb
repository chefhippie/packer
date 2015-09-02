#
# Cookbook Name:: packer
# Attributes:: source
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

default["packer"]["source"]["version"] = "0.8.6"
default["packer"]["source"]["package_file"] = "packer_#{node["packer"]["source"]["version"]}_linux_amd64.zip"
default["packer"]["source"]["package_url"] = "https://dl.bintray.com/mitchellh/packer/#{node["packer"]["source"]["package_file"]}"
default["packer"]["source"]["install_path"] = "/usr/local/bin"
