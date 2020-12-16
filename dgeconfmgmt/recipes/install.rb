#
# Cookbook:: dgeconfmgmt
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']#########c:\\LLamasoft
component_name       = 'DgeServiceConfigurationManager'
service_bin          = node['dgeconfmgmt']['service_exe'] #######DgeConfigurationManager.exe
service_display_name = node['dgeconfmgmt']['service_display_name']###LLamasoft DGE Configuration Manager
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}" ###c:\\LLamasoft\\DgeServiceConfigurationManager\\DgeConfigurationManager.exe

folders = %w[c:\\DGE c:\\DGE\\State c:\\DGE\\Logs]

folders.each do |folder|
  directory folder do
    action :create
    recursive true
  end
end

artifactory_release 'DgeServiceConfigurationManager' do
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do
  bin_path service_exe
  display_name service_display_name
end
