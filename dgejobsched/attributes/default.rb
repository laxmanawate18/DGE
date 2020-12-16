# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgejobsched']['package'] = 'DgeServiceJobScheduler'
default['dgejobsched']['service_exe'] = 'DgeJobScheduler.exe'
default['dgejobsched']['service_display_name'] = 'LLamasoft DGE Job Scheduler'

default['dgejobsched']['config']['BaseServerAddress'] = 'http://localhost:9000'
default['dgejobsched']['config']['BaseConfigurationManagerAddress'] = 'http://localhost:9008'
default['dgejobsched']['config']['BaseJobCoordinatorAddress'] = ''
default['dgejobsched']['config']['BaseWorkflowManagerAddress'] = ''
default['dgejobsched']['config']['LogFilePath'] = 'C:\DGE\Logs\DGE Job Scheduler Log.txt'
default['dgejobsched']['config']['PersistedStateFilePath'] = 'C:\DGE\State\DGE Job Scheduler State.txt'
default['dgejobsched']['config']['LogConnectionString'] = ''
default['dgejobsched']['config']['LogTableName'] = ''
default['dgejobsched']['config']['RemoveExpiredScheduleDelayDays'] = '7'
default['dgejobsched']['config']['ConfigurationScope'] = 'DgeJobScheduler'
