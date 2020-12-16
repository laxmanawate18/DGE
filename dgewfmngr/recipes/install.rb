#
# Cookbook:: dgewfmngr
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path'] 	c:\\LLamasoft
component_name       = node['dgewfmngr']['package']	DgeServiceWorkflowManager
service_bin          = node['dgewfmngr']['service_exe']	DgeWorkflowManager.exe
service_display_name = node['dgewfmngr']['service_display_name']  LLamasoft DGE Workflow Manager
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"   c:\\LLamasoft\\DgeServiceWorkflowManager\\DgeWorkflowManager.exe

artifactory_release component_name do			DgeServiceWorkflowManager
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do		 LLamasoft DGE Workflow Manager
  bin_path service_exe				 c:\\LLamasoft\\DgeServiceWorkflowManager\\DgeWorkflowManager.exe
  display_name service_display_name
end
