#
# Cookbook:: dgefilelist
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']           ####c:\\LLamasoft
component_name       = node['dgejobexec']['package']       ####DgeServiceJobExecutionCoordinator
service_bin          = node['dgejobexec']['service_exe']	####DgeJobExecutionCoordinator.exe
service_display_name = node['dgejobexec']['service_display_name']	###LLamasoft DGE Job Execution Coordinator
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"  ### c:\\LLamasoft\\DgeServiceJobExecutionCoordinator\\DgeJobExecutionCoordinator.exe

artifactory_release component_name do         ###DgeServiceJobExecutionCoordinator
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do     ###LLamasoft DGE Job Execution Coordinator
  bin_path service_exe			 ### c:\\LLamasoft\\DgeServiceJobExecutionCoordinator\\DgeJobExecutionCoordinator.exe
  display_name service_display_name
end
