case node[:platform]
when "debian", "ubuntu"
  execute "apt-get update"
end

package 'curl'

include_recipe "lltsv"
