#
# Cookbook:: dgefilelist
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'

# Variables
base_path            = node['llcp']['base_path']       #####c:\\LLamasoft
component_name       = node['dgefilelist']['package']  ######DgeServiceFileListener
service_bin          = node['dgefilelist']['service_exe']   #####DgeFileListener.exe'
service_display_name = node['dgefilelist']['service_display_name']  #####LLamasoft DGE File Listener
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"   #####c:\\LLamasoft\\DgeServiceFileListener\\DgeFileListener.exe

artifactory_release component_name do      #######DgeServiceFileListener
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do      #####LLamasoft DGE File Listener
  bin_path service_exe			  #####c:\\LLamasoft\\DgeServiceFileListener\\DgeFileListener.exe
  display_name service_display_name	  #####LLamasoft DGE File Listener
end
