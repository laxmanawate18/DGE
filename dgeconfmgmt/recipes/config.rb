ENV['LLamasoft:DGE:Hosts:ConfigurationManager'] = "#{node['dgeconfmgmt']['DGEServerAddress']}:9002"
# all variables necessary to run this recipe:
base_path      = node['llcp']['base_path']         ####c:\\LLamasoft
component_name = node['dgeconfmgmt']['package']	   ####DgeServiceConfigurationManager
config_path    = "#{base_path}\\#{component_name}\\appsettings.json"  ###c:\\LLamasoft\\DgeServiceConfigurationManager\\appsettings.json
service        = node['dgeconfmgmt']['service_display_name'] ####LLamasoft DGE Configuration Manager

windows_env 'LLamasoft:DGE:Hosts:ConfigurationManager' do
  value "#{node['dgeconfmgmt']['DGEServerAddress']}:9002"
  action :create
end



# generic templating for maximum copy/paste-ability
template 'llcp_config' do
  source 'config.erb'
  path config_path
end

# now that we have config and any necessary updates have run,
# restart to kick the changes into effect
llcp_service service do
  action :restart
end
