#
# Cookbook:: chefconf21
# Recipe:: default
#
# Copyright:: 2021, Joseph J Nuspl Jr
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

unless ENV['TEST_KITCHEN'].nil?
  # initialize the webmock
  chef_gem 'webmock' do
    compile_time true
  end

  require 'webmock'

  WebMock
    .enable!
  WebMock
    .stub_request(:post, 'https://coffee.example.com/v1/brew')
    .to_return(status: 200)
end

