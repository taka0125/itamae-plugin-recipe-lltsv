include_recipe 'lltsv::attributes'

execute 'install lltsv' do
  command <<-EOC
  rm -f /tmp/lltsv && \
  curl -L https://github.com/sonots/lltsv/releases/download/v#{node[:lltsv][:version]}/lltsv_#{node[:lltsv][:arch]} -o /tmp/lltsv && \
  chmod a+x /tmp/lltsv && \
  mv /tmp/lltsv #{node[:lltsv][:install_path]}/lltsv
  EOC

  not_if "lltsv --version 2>/dev/null | grep -w 'lltsv version #{node[:lltsv][:version]}'"
end
