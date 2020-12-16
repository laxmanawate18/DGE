# all variables necessary to run this recipe:
base_path      = node['llcp']['base_path']
component_name = node['dgewfmngr']['package']
service_config = "#{node['dgewfmngr']['service_exe']}.config"
config_path    = "#{base_path}\\#{component_name}\\#{service_config}"
service        = node['dgewfmngr']['service_display_name']

# generic templating for maximum copy/paste-ability
# template 'llcp_config' do
#   source 'config.erb'
#   path config_path
# end

# now that we have config and any necessary updates have run,
# restart to kick the changes into effect
llcp_service service do
  action :restart
end
