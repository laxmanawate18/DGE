#
# Cookbook:: dgefilelist
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']
component_name       = node['dgejobsched']['package']
service_bin          = node['dgejobsched']['service_exe']
service_display_name = node['dgejobsched']['service_display_name']
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"

artifactory_release component_name do
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do
  bin_path service_exe
  display_name service_display_name
end
