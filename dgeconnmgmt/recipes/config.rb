base_path      = node['llcp']['base_path']
component_name = node['dgeconnmgmt']['package']
service_config = "#{node['dgeconnmgmt']['service_exe']}.config"
config_path    = "#{base_path}\\#{component_name}\\#{service_config}"
service        = node['dgeconnmgmt']['service_display_name']

# template "template_config" do
#   source 'config.erb'
#   path config_path
# end

# now that we have config and any necessary updates have run,
# restart to kick the changes into effect
llcp_service service do
  action :restart
end
