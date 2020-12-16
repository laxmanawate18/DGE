# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgejobexec']['package'] = 'DgeServiceJobExecutionCoordinator'
default['dgejobexec']['service_exe'] = 'DgeJobExecutionCoordinator.exe'
default['dgejobexec']['service_display_name'] = 'LLamasoft DGE Job Execution Coordinator'

default['dgejobexec']['install']['foldername'] = 'Job Execution Coordinator'
default['dgejobexec']['install']['servicename'] = 'LLamasoft DGE Job Execution Coordinator'
default['dgejobexec']['install']['configpath'] = 'C:\\DGE\\DGE Services'
default['dgejobexec']['install']['zippath'] = 'C:\Temp'
default['dgejobexec']['install']['executeconfigpath'] = "C:\\DGE\\DGE Services"
default['dgejobexec']['install']['executepath'] = '"C:\DGE\DGE Services\Job Execution Coordinator\DgeJobExecutionCoordinator.exe"'

default['dgejobexec']['config']['configname'] = 'DgeJobExecutionCoordinator.exe.config'
default['dgejobexec']['config']['template'] = 'DgeJobExecutionCoordinator.exe.config.erb'
default['dgejobexec']['config']['BaseServerAddress'] = 'http://localhost:9001'
default['dgejobexec']['config']['BaseTaskCoordinatorAddress'] = ''
default['dgejobexec']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE Job Execution Coordinator Log.txt'
default['dgejobexec']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE Job Execution Coordinator State.txt'
default['dgejobexec']['config']['LogConnectionString'] = ''
default['dgejobexec']['config']['LogTableName'] = ''
default['dgejobexec']['config']['RemoveFinishedJobDelayMinutes'] = '10'
default['dgejobexec']['config']['MinimumReviewIntervalSeconds'] = '10'
default['dgejobexec']['config']['CanMultitask'] = "False"
default['dgejobexec']['config']['BaseNotificationManagerAddress'] = "http://localhost:9007"
default['dgejobexec']['config']['RaiseAlertNotifications'] = "True"
default['dgejobexec']['config']['BaseConfigurationManagerAddress'] = "http://localhost:9008"
default['dgejobexec']['config']['ConfigurationScope'] = 'DgeJobExecutionCoordinator'
default['dgejobexec']['config']['PreventConnectionUsageCollisions'] = 'False'
default['dgejobexec']['config']['JobDatabaseConnectionString'] = ''
default['dgejobexec']['config']['BaseAlertNotifications'] = ''

default['dgejobexec']['artifact']['name'] = 'DgeServiceJobExec'
default['dgejobexec']['artifact']['pkg_version'] = '1.4.2.59425'
default['dgejobexec']['artifact']['host'] = 'http://artifactory.llamadev.local:8081'
default['dgejobexec']['artifact']['repo'] = 'artifactory'
default['dgejobexec']['artifact']['path'] = 'octopacks-nuget'
default['dgejobexec']['artifact']['fullpath'] = 'http://artifactory.llamadev.local:8081/artifactory/octopacks-nuget/DgeServiceJobExec.1.4.2.59425.nupkg'
default['dgejobexec']['artifact']['version'] = '0.0.0'

# Setting flag for onprem deployments
default['onprem']['islocal'] = false
