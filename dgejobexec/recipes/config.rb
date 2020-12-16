# all variables necessary to run this recipe:
base_path      = node['llcp']['base_path']
component_name = node['dgejobexec']['package']
service_config = "#{node['dgejobexec']['service_exe']}.config"
config_path    = "#{base_path}\\#{component_name}\\#{service_config}"
service        = node['dgejobexec']['service_display_name']

# generic templating for maximum copy/paste-ability
# template 'llcp_config' do
#   source 'config.erb'
#   path config_path
# end

powershell_script 'JobExec_StopProcess' do
  code <<-EOH
  Stop-Process -Name "DgeJobExecutionCoordinator" -Force
  EOH
end


llcp_service service do
  action :restart
end
