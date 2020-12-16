#
# Cookbook:: dgewsmngr
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']	c:\\LLamasoft
component_name       = node['dgewsmngr']['package']	DgeServiceWorkspaceManager
service_bin          = node['dgewsmngr']['service_exe'] DgeWorkspaceManager.exe
service_display_name = node['dgewsmngr']['service_display_name']  LLamasoft DGE Workspace Manager
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}" c:\\LLamasoft\\DgeServiceWorkspaceManager\\DgeWorkspaceManager.exe

artifactory_release component_name do				DgeServiceWorkspaceManager
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do		LLamasoft DGE Workspace Manager
  bin_path service_exe				c:\\LLamasoft\\DgeServiceWorkspaceManager\\DgeWorkspaceManager.exe
  display_name service_display_name
end