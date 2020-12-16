# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgefilelist']['package'] = 'DgeServiceFileListener'
default['dgefilelist']['service_exe'] = 'DgeFileListener.exe'
default['dgefilelist']['service_display_name'] = 'LLamasoft DGE File Listener'

# Used in template
default['dgefilelist']['config']['BaseServerAddress'] = 'http://localhost:9004'
default['dgefilelist']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE File Listener Log.txt'
default['dgefilelist']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE File Listener State.txt'
default['dgefilelist']['config']['LogConnectionString'] = ''
default['dgefilelist']['config']['LogTableName'] = ''
default['dgefilelist']['config']['BaseJobCoordinatorAddress'] = ''
default['dgefilelist']['config']['BaseWorkflowManagerAddress'] = ''
default['dgefilelist']['config']['BaseConfigurationManagerAddress'] = 'http://localhost:9008'
default['dgefilelist']['config']['ConfigurationScope'] = 'DgeFileListener'
