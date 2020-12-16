# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgenotifmngr']['package'] = 'DgeServiceNotificationManager'
default['dgenotifmngr']['service_exe'] = 'DgeNotificationManager.exe'
default['dgenotifmngr']['service_display_name'] = 'LLamasoft DGE Alert Notification Manager'

default['dgenotifmngr']['install']['foldername'] = 'Notification Manager'
default['dgenotifmngr']['install']['servicename'] = 'LLamasoft DGE Alert Notification Manager'
default['dgenotifmngr']['install']['configpath'] = 'C:\\DGE\\DGE Services'
default['dgenotifmngr']['install']['zippath'] = 'C:\temp'
default['dgenotifmngr']['install']['executeconfigpath'] = "C:\\DGE\\DGE Services"
default['dgenotifmngr']['install']['executepath'] = '"C:\DGE\DGE Services\Notification Manager\DgeNotificationManager.exe"'

default['dgenotifmngr']['config']['configname'] = 'DgeNotificationManager.exe.config'
default['dgenotifmngr']['config']['template'] = 'DgeNotificationManager.exe.config.erb'
default['dgenotifmngr']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE Notification Manager Log.txt'
default['dgenotifmngr']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE Notification Manager State.txt'
default['dgenotifmngr']['config']['LogConnectionString'] = ''
default['dgenotifmngr']['config']['LogTableName'] = ''
default['dgenotifmngr']['config']['DgeDatabaseConnectionString'] = ''
default['dgenotifmngr']['config']['K2ApplicationDatabaseConnectionString'] = ''
default['dgenotifmngr']['config']['K2UserDatabaseConnectionString'] = ''
default['dgenotifmngr']['config']['EmailUnsubscribeRelativeUrl'] = '/Users/Unsubscribe'
default['dgenotifmngr']['config']['EmailHeaderlRelativeUrl'] = '/Content/Images/Logo_ScgDotCom_EmailHeader.png'
default['dgenotifmngr']['config']['BaseConfigurationManagerAddress'] = 'http://localhost:9008'
default['dgenotifmngr']['config']['ConfigurationScope'] = 'DgeAlertNotificationManager'
default['dgenotifmngr']['config']['BaseServerAddress'] = 'http://localhost:9007'

default['dgenotifmngr']['artifact']['name'] = 'DgeServiceNotificationManager'
default['dgenotifmngr']['artifact']['pkg_version'] = '1.4.2.59425'
default['dgenotifmngr']['artifact']['host'] = 'http://artifactory.llamadev.local:8081'
default['dgenotifmngr']['artifact']['repo'] = 'artifactory'
default['dgenotifmngr']['artifact']['path'] = 'octopacks-nuget'
default['dgenotifmngr']['artifact']['fullpath'] = 'http://artifactory.llamadev.local:8081/artifactory/octopacks-nuget/DgeServiceNotificationManager.1.4.2.59425.nupkg'
default['dgenotifmngr']['artifact']['version'] = '0.0.0'

# Setting flag for onprem deployments
default['onprem']['islocal'] = false
