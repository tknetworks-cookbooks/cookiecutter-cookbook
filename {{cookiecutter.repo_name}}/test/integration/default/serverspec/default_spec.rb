#
# Author:: Ken-ichi TANABE (<nabeken@tknetworks.org>)
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
require 'spec_helper'

describe '{{ cookiecutter.repo_name }}::default' do
  it "installs {{ cookiecutter.repo_name }} package" do
    expect(package("{{ cookiecutter.repo_name }}")).to be_installed
  end

  describe file("/etc/{{ cookiecutter.repo_name }}.conf") do
    it { should be_file }

    its(:content) {
      should contain 'foobar'
    }
  end
end
