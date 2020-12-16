ENV['LLamasoft:DGE:Hosts:ConfigurationManager'] = "#{node['dgetaskexec']['config']['DGEServerAddress']}:9002"
# all variables necessary to run this recipe:
base_path      = node['llcp']['base_path'] #c:\\LLamasoft
component_name = node['dgetaskexec']['package'] #DgeServiceTaskExecutionCoordinator
service_config = "#{node['dgetaskexec']['service_exe']}.config" #DgeTaskExecutionCoordinator.exe
config_path    = "#{base_path}\\#{component_name}\\#{service_config}" #c:\\LLamasoft\\DgeServiceTaskExecutionCoordinator\\DgeTaskExecutionCoordinator.exe.config
service        = node['dgetaskexec']['service_display_name'] #LLamasoft DGE Task Execution Coordinator

# # Building vars for readability and line length
# netoptfolder = node['dgetaskexec']['install']['netoptfoldername']
# netoptconfig = node['dgetaskexec']['config']['netoptconfigname']
# netoptpath   = "#{netoptfolder}\\#{netoptconfig}"
# procfolder   = node['dgetaskexec']['install']['procfoldername']
# procconfig   = node['dgetaskexec']['config']['procconfigname']
# procconfpath = "#{procfolder}\\#{procconfig}"
# proclafolder = node['dgetaskexec']['install']['proclatestfoldername']
# proclaconfig = node['dgetaskexec']['config']['procconfigname']
# proclatestpath = "#{proclafolder}\\#{proclaconfig}"
#
# # Now build the final values
# netoptconf_file       = "#{base_path}\\#{component_name}\\#{netoptpath}"
# procconf_file         = "#{base_path}\\#{component_name}\\#{procconfpath}"
# proclatestconf_file   = "#{base_path}\\#{component_name}\\#{proclatestpath}"

# generic templating for maximum copy/paste-ability
# template 'llcp_config' do
#   source 'config.erb'
#   path config_path
# end

windows_env 'LLamasoft:DGE:Hosts:ConfigurationManager' do
  value "#{node['dgeconfmgmt']['DGEServerAddress']}:9002" 
  action :create
end
#
# template 'template_config_netopt' do
#   source 'netopt.erb'
#   path netoptconf_file
# end
#
# template 'template_config_proc' do
#   source 'taskexecproc.erb'
#   path procconf_file
# end
#
# template 'template_config_proc_latest' do
#   source 'taskexecproc.erb'
#   path proclatestconf_file
# end

# now that we have config and any necessary updates have run,
# restart to kick the changes into effect
llcp_service service do
  action :restart
end
