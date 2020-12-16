#
# Cookbook:: dgepkgmngr
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chef_gem 'rest-client'
::Chef::Recipe.send(:include, ArtifactoryArtifact::Helper)

# Variables
base_path            = node['llcp']['base_path']               c:\\LLamasoft
component_name       = node['dgepkgmngr']['package']           DgeServicePackageManager'
service_bin          = node['dgepkgmngr']['service_exe']       DgePackageManager.exe
service_display_name = node['dgepkgmngr']['service_display_name']      LLamasoft DGE Package Manager
service_exe          = "#{base_path}\\#{component_name}\\#{service_bin}"   c:\\LLamasoft\\DgeServicePackageManager\\DgePackageManager.exe

# Variables
art = node['dgepkgmngr']['artifact']       
inst = node['dgepkgmngr']['install']
artsql = node['dgepkgmngr']['artifactsql']
foldername = "#{art['name']}.#{art['pkg_version']}"    DgeServicePackageManager.1.4.2.59425

# DGE
artifactory_release component_name do                 ###Dge Service Package manager
  release_environment node['artifactory_environment']
  action :install
end

llcp_symlink component_name

llcp_service service_display_name do
  bin_path service_exe
  display_name service_display_name
end

#
# # SQL SSMS
#
# # SSMS and ADV_SSMS require that older version of the .net framework installed
# powershell_script 'enable_dot_net_three_five' do
#   code <<-EOH
#   Install-WindowsFeature NET-Framework-Features
#   EOH
#   not_if { registry_key_exists?('HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5\\', 'x86_64') }
# end
#
# # SQL Section
#
# # Download Artifact
# powershell_script 'download_SQL' do
#   code <<-EOH
#   if((Get-Package -Name "SQL Server 2014*").count -eq 5) {
#     Write-Host "Skipping SQL Download"
#   } else {
#     (New-Object System.Net.WebClient).DownloadFile("#{artsql['sqlpkgurl']}","#{inst['zippath']}\\#{artsql['name']}")
#   }
#   EOH
# end
#
# # Unzip SQL installer to directory
# powershell_script 'unzip_to_temp' do
#  code <<-EOH
#  Expand-Archive "#{inst['zippath']}\\#{artsql['name']}" "#{inst['zippath']}\\#{artsql['foldername']}"
# EOH
# end
#
# template "#{inst['zippath']}/sqlconfig.ini" do
#  source 'SSIS_Install.erb'
#  action :create
# end
#
# execute 'sql_install' do
#   command "#{node['dgepkgmngr']['artifactsql']['executepath']} /Q "\
#   " /ConfigurationFile=#{inst['zippath']}\\sqlconfig.ini"
#   action :run
#   returns [0,-2068643838]
# end
