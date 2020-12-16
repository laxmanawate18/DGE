#
# Cookbook:: dgetaskexec
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']   #####C:\\LLamasoft
component_name       = node['dgetaskexec']['package'] ####DgeServiceTaskExecutionCoordinator
service_bin          = node['dgetaskexec']['service_exe'] ##DgeTaskExecutionCoordinator.exe
service_display_name = node['dgetaskexec']['service_display_name'] ####LLamasoft DGE Task Execution Coordinator
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}" # C:\\LLamasoft\\DgeServiceTaskExecutionCoordinator\\DgeTaskExecutionCoordinator.exe

artifactory_release component_name do
  release_environment node['artifactory_environment']  #LLCP-Dev
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do
  bin_path service_exe
  display_name service_display_name
end