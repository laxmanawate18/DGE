# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgepkgmngr']['package'] = 'DgeServicePackageManager'
default['dgepkgmngr']['service_exe'] = 'DgePackageManager.exe'
default['dgepkgmngr']['service_display_name'] = 'LLamasoft DGE Package Manager'

default['dgepkgmngr']['install']['foldername'] = 'Package Manager'
default['dgepkgmngr']['install']['exeToRun'] = 'DgePackageManager.exe'
default['dgepkgmngr']['install']['servicename'] = 'LLamasoft DGE Package Manager'
default['dgepkgmngr']['install']['executefoldername'] = '"Package Manager"'
default['dgepkgmngr']['install']['configpath'] = 'C:\\DGE\\DGE Services'
default['dgepkgmngr']['install']['zippath'] = 'C:\temp'
default['dgepkgmngr']['install']['executeconfigpath'] = "C:\\DGE\\DGE Services"
default['dgepkgmngr']['install']['executepath'] = '"C:\DGE\DGE Services\Package Manager\DgePackageManager.exe"'
default['dgepkgmngr']['install']['test'] = 'Testing Uploader'

default['dgepkgmngr']['config']['configname'] = 'DgePackageManager.exe.config'
default['dgepkgmngr']['config']['template'] = 'DgePackageManager.exe.config.erb'
default['dgepkgmngr']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE Package Manager Log.txt'
default['dgepkgmngr']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE Package Manager State.txt'
default['dgepkgmngr']['config']['LogConnectionString'] = ''
default['dgepkgmngr']['config']['LogTableName'] = ''
default['dgepkgmngr']['config']['BaseConfigurationManagerAddress'] = ''
default['dgepkgmngr']['config']['ConfigurationScope'] = 'DgePackageManager'
default['dgepkgmngr']['config']['PackageFileRoot'] = 'C:/temp'
default['dgepkgmngr']['config']['LogRestCalls'] = 'False'
default['dgepkgmngr']['config']['BaseServerAddress'] = 'http://localhost:9009'

default['dgepkgmngr']['artifact']['name'] = 'DgeServicePackageManager'
default['dgepkgmngr']['artifact']['pkg_version'] = '1.4.2.59425'
default['dgepkgmngr']['artifact']['host'] = 'http://artifactory.llamadev.local:8081'
default['dgepkgmngr']['artifact']['repo'] = 'artifactory'
default['dgepkgmngr']['artifact']['path'] = 'octopacks-nuget'
default['dgepkgmngr']['artifact']['fullpath'] = 'http://artifactory.llamadev.local:8081/artifactory/octopacks-nuget/DgeServicePackageManager.1.4.2.59425.nupkg'
default['dgepkgmngr']['artifact']['version'] = '0.0.0'

default['dgepkgmngr']['artifactsql']['foldername'] = 'SQLInstaller'
default['dgepkgmngr']['artifactsql']['sqlpkgurl'] = 'http://artifactory.llamadev.local:8081/artifactory/generic-local/DGE/SQLInstaller/SQL2014-Standard-64bit-DVD.zip'
default['dgepkgmngr']['artifactsql']['name'] = 'SQL2014-Standard-64bit-DVD.zip'
default['dgepkgmngr']['artifactsql']['path'] = '/generic-local/DGE/SQLInstaller'
default['dgepkgmngr']['artifactsql']['executepath'] = 'C:/temp/SQLInstaller/setup.exe'

# Setting flag for onprem deployments
default['onprem']['islocal'] = false
