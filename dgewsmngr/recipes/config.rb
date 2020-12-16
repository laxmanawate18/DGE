# all variables necessary to run this recipe:
base_path      = node['llcp']['base_path']
component_name = node['dgewsmngr']['package']
service_config = "#{node['dgewsmngr']['service_exe']}.config"
config_path    = "#{base_path}\\#{component_name}\\#{service_config}"
service        = node['dgewsmngr']['service_display_name']

# generic templating for maximum copy/paste-ability
# template 'llcp_config' do
#   source 'config.erb'
#   path config_path
# end

# now that we have config and any necessary updates have run,
# restart to kick the changes into effect
# powershell_script 'restart-service' do
#   code "Restart-Service -Name \'#{service}\' -Force -Confirm:$false"
# end

llcp_service service do
  action :restart
end
