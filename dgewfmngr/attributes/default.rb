# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgewfmngr']['package'] = 'DgeServiceWorkflowManager'
default['dgewfmngr']['service_exe'] = 'DgeWorkflowManager.exe'
default['dgewfmngr']['service_display_name'] = 'LLamasoft DGE Workflow Manager'

default['dgewfmngr']['install']['foldername'] = 'Workflow Manager'
default['dgewfmngr']['install']['servicename'] = 'LLamasoft DGE Workflow Manager'
default['dgewfmngr']['install']['configpath'] = 'C:\\DGE\\DGE Services'
default['dgewfmngr']['install']['zippath'] = 'C:\Temp'
default['dgewfmngr']['install']['executeconfigpath'] = "C:\\DGE\\DGE Services"
default['dgewfmngr']['install']['executepath'] = '"C:\DGE\DGE Services\Workflow Manager\DgeWorkflowManager.exe"'

default['dgewfmngr']['config']['configname'] = 'DgeWorkflowManager.exe.config'
default['dgewfmngr']['config']['template'] = 'DgeWorkflowManager.exe.config.erb'
default['dgewfmngr']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE Workflow Manager Log.txt'
default['dgewfmngr']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE Workflow Manager State.txt'
default['dgewfmngr']['config']['LogConnectionString'] = ''
default['dgewfmngr']['config']['LogTableName'] = ''
default['dgewfmngr']['config']['PackageFileRoot'] = 'C:/Temp'
default['dgewfmngr']['config']['UseJobDatabase'] = 'True'
default['dgewfmngr']['config']['JobDatabaseConnectionString'] = ''
default['dgewfmngr']['config']['BaseConfigurationManagerAddress'] = 'http://localhost:9008'
default['dgewfmngr']['config']['ConfigurationScope'] = 'DgeWorkflowManager'
default['dgewfmngr']['config']['BaseServerAddress'] = 'http://localhost:9005'

default['dgewfmngr']['artifact']['name'] = 'DgeServiceWorkflowManager'
default['dgewfmngr']['artifact']['pkg_version'] = '1.4.2.59425'
default['dgewfmngr']['artifact']['host'] = 'http://artifactory.llamadev.local:8081'
default['dgewfmngr']['artifact']['repo'] = 'artifactory'
default['dgewfmngr']['artifact']['path'] = 'octopacks-nuget'
default['dgewfmngr']['artifact']['fullpath'] = 'http://artifactory.llamadev.local:8081/artifactory/octopacks-nuget/DgeServiceWorkflowManager.1.4.2.59425.nupkg'
default['dgewfmngr']['artifact']['version'] = '0.0.0'

# Setting flag for onprem deployments
default['onprem']['islocal'] = false
