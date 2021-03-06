# all variables necessary to run this recipe:
base_path      = node['llcp']['base_path']
component_name = node['dgejobsched']['package']
service_config = "#{node['dgejobsched']['service_exe']}.config"
config_path    = "#{base_path}\\#{component_name}\\#{service_config}"
service        = node['dgejobsched']['service_display_name']

# generic templating for maximum copy/paste-ability
# template 'llcp_config' do
#   source 'config.erb'
#   path config_path
# end

llcp_service service do
  action :restart
end
