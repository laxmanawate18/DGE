# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgewsmngr']['package'] = 'DgeServiceWorkspaceManager'
default['dgewsmngr']['service_exe'] = 'DgeWorkspaceManager.exe'
default['dgewsmngr']['service_display_name'] = 'LLamasoft DGE Workspace Manager'

default['dgewsmngr']['install']['foldername'] = 'Workspace Manager'
default['dgewsmngr']['install']['servicename'] = 'LLamasoft DGE Workspace Manager'
default['dgewsmngr']['install']['configpath'] = 'C:\\DGE\\DGE Services'
default['dgewsmngr']['install']['zippath'] = 'C:\Temp'
default['dgewsmngr']['install']['executeconfigpath'] = "C:\\DGE\\DGE Services"
default['dgewsmngr']['install']['executepath'] = '"C:\DGE\DGE Services\Workspace Manager\DgeWorkspaceManager.exe"'

default['dgewsmngr']['config']['configname'] = 'DgeWorkspaceManager.exe.config'
default['dgewsmngr']['config']['template'] = 'DgeWorkspaceManager.exe.config.erb'
default['dgewsmngr']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE Workspace Manager Log.txt'
default['dgewsmngr']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE Workspace Manager State.txt'
default['dgewsmngr']['config']['LogConnectionString'] = ''
default['dgewsmngr']['config']['LogTableName'] = ''
default['dgewsmngr']['config']['BaseConfigurationManagerAddress'] = 'http://localhost:9008'
default['dgewsmngr']['config']['ConfigurationScope'] = 'DgeWorkspaceManager'
default['dgewsmngr']['config']['WorkspaceServerInstance'] = ''
default['dgewsmngr']['config']['WorkspaceUserID'] = ''
default['dgewsmngr']['config']['WorkspacePassword'] = ''
default['dgewsmngr']['config']['WorkspaceNamePrefix'] = 'Dge_'
default['dgewsmngr']['config']['WorkspaceNameSuffix'] = '_Workspace'
default['dgewsmngr']['config']['WorkspacePoolSize'] = '0'
default['dgewsmngr']['config']['DatabaseManagementConnectionString'] = ''
default['dgewsmngr']['config']['DatabaseFolderPath'] = 'C:\\Program Files\\Microsoft SQL Server\\MSSQL12.MSSQLSERVER\\MSSQL\\DATA'
default['dgewsmngr']['config']['DatabaseInitialSize'] = '1000'
default['dgewsmngr']['config']['DatabaseGrowthFactor'] = '500'
default['dgewsmngr']['config']['DatabaseMaximumSize'] = '50000'
default['dgewsmngr']['config']['DatabaseLogFolderPath'] = 'C:\\Program Files\\Microsoft SQL Server\\MSSQL12.MSSQLSERVER\\MSSQL\\DATA'
default['dgewsmngr']['config']['DatabaseLogInitialSize'] = '500'
default['dgewsmngr']['config']['DatabaseLogGrowthFactor'] = '500'
default['dgewsmngr']['config']['DatabaseLogMaximumSize'] = '100000'
default['dgewsmngr']['config']['MinimumReviewIntervalSeconds'] = '10'
default['dgewsmngr']['config']['RetainUsedDatabases'] = 'False'
default['dgewsmngr']['config']['WorkspaceLifetimeSeconds'] = '600'
default['dgewsmngr']['config']['BaseServerAddress'] = 'http://localhost:9002'

default['dgewsmngr']['artifact']['name'] = 'DgeServiceWorkspaceManager'
default['dgewsmngr']['artifact']['pkg_version'] = '1.4.2.59425'
default['dgewsmngr']['artifact']['host'] = 'http://artifactory.llamadev.local:8081'
default['dgewsmngr']['artifact']['repo'] = 'artifactory'
default['dgewsmngr']['artifact']['path'] = 'octopacks-nuget'
default['dgewsmngr']['artifact']['fullpath'] = 'http://artifactory.llamadev.local:8081/artifactory/octopacks-nuget/DgeServiceWorkspaceManager.1.4.2.59425.nupkg'
default['dgewsmngr']['artifact']['version'] = '0.0.0'

# Setting flag for onprem deployments
default['onprem']['islocal'] = false