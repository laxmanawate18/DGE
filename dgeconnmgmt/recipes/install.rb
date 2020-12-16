#
# Cookbook:: dgeconnmgmt
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'
::Chef::Recipe.send(:include, ArtifactoryArtifact::Helper)#::Chef::DSL::Recipe.include MyCookbook::Helpers#
#helper module in artifactoryartifact cookbook#


# Variables
base_path            = node['llcp']['base_path']		c:\\LLamasoft
component_name       = node['dgeconnmgmt']['package']		DgeServiceConnectionManager
service_bin          = node['dgeconnmgmt']['service_exe']	DgeConnectionManager.exe
service_display_name = node['dgeconnmgmt']['service_display_name']  LLamasoft DGE Connection Manager
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"  c:\\LLamasoft\\DgeServiceConnectionManager\\DgeConnectionManager.exe

artifactory_release component_name do					DgeServiceConnectionManager
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do
  bin_path service_exe
  display_name service_display_name
end

# # Variables
# art = node['dgeconnmgmt']['artifact']
# inst = node['dgeconnmgmt']['install']
# foldername = "#{art['name']}.#{art['pkg_version']}"

# # Download artifact, install NuGet package, and install as service
# powershell_script 'download_artifact' do
#  code <<-EOH
#  (New-Object System.Net.WebClient).DownloadFile("#{art['fullpath']}","#{inst['zippath']}\\#{art['name']}.#{art['pkg_version']}.nupkg")
#  EOH
# end

# powershell_script 'install_package' do
#   code <<-EOH
#   nuget install #{art['name']} -Source #{inst['zippath']} -OutputDirectory '#{inst['configpath']}'
#   EOH
# end

# powershell_script 'rename_directory' do
#   code <<-EOH
#   Rename-Item "#{inst['executeconfigpath']}\\#{art['name']}.#{art['pkg_version']}" "#{inst['configpath']}\\#{inst['foldername']}"
#   EOH
# end

# powershell_script 'install_service' do
#   code "C:\\windows\\Microsoft.NET\\Framework64\\v4.0.*\\InstallUtil.exe #{inst['executepath']}"
#   not_if "sc.exe query \"#{inst['servicename']}\""
# end
