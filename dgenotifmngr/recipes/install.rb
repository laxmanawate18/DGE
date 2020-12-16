#
# Cookbook:: dgenotifmngr
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']    ####c:\\LLamasoft
component_name       = node['dgenotifmngr']['package']      ###DgeServiceNotificationManager
service_bin          = node['dgenotifmngr']['service_exe']    ###DgeNotificationManager.exe
service_display_name = node['dgenotifmngr']['service_display_name']       ###  LLamasoft DGE Alert Notification Manager
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"  ### c:\\LLamasoft\\DgeServiceNotificationManager\\DgeNotificationManager.exe

artifactory_release component_name do				###DgeServiceNotificationManager
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do    ###  LLamasoft DGE Alert Notification Manager
  bin_path service_exe			### c:\\LLamasoft\\DgeServiceNotificationManager\\DgeNotificationManager.exe
  display_name service_display_name
end