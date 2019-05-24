require "spec_helper"

RSpec.describe file("#{node[:lltsv][:install_path]}/lltsv") do
  it { should be_file }
  it { should be_executable }
end
