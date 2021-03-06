# Used in recipes
default['artifactory_environment'] = 'LLCP-Dev' # set via jenkins
default['llcp']['base_path'] = 'c:\\LLamasoft'
default['dgetaskexec']['package'] = 'DgeServiceTaskExecutionCoordinator'
default['dgetaskexec']['service_exe'] = 'DgeTaskExecutionCoordinator.exe'
default['dgetaskexec']['service_display_name'] = 'LLamasoft DGE Task Execution Coordinator'

default['dgetaskexec']['install']['foldername'] = 'TaskExecutionCoordinator'
default['dgetaskexec']['install']['servicename'] = 'LLamasoft DGE Task Execution Coordinator'
default['dgetaskexec']['install']['configpath'] = 'c:\\LLamasoft'
default['dgetaskexec']['install']['zippath'] = 'C:\temp'
default['dgetaskexec']['install']['executeconfigpath'] = 'C:\\DGE\\DGE Services'
default['dgetaskexec']['install']['executepath'] = '"C:\DGE\DGE Services\TaskExecutionCoordinator\DgeTaskExecutionCoordinator.exe"'

default['dgetaskexec']['install']['netoptfoldername'] = '_NetOptModelProcessorDEM'
default['dgetaskexec']['install']['procfoldername'] = '_TaskExecProc'
default['dgetaskexec']['install']['proclatestfoldername'] = '_TaskExecProcLatest'
default['dgetaskexec']['config']['mainconfigname'] = 'DgeTaskExecutionCoordinator.exe.config'
default['dgetaskexec']['config']['netoptconfigname'] = 'NetOptModelProcessor.exe.config'
default['dgetaskexec']['config']['procconfigname'] = 'TaskExecProc.exe.config'
default['dgetaskexec']['config']['LogFilePath'] = '"C:\\LLamasoft\\Logs\\DGE Task Execution Coordinator Log.txt"'
default['dgetaskexec']['config']['PersistedStateFilePath'] = '"C:\\LLamasoft\\State\\DGE Task Execution Coordinator.txt"'
default['dgetaskexec']['config']['LogConnectionString'] = ''
default['dgetaskexec']['config']['LogTableName'] = ''
default['dgetaskexec']['config']['BaseServerAddress'] = ''
default['dgetaskexec']['config']['BaseJobCoordinatorAddress'] = ''
default['dgetaskexec']['config']['MaxConcurrentRunningTaskCount'] = '1'
default['dgetaskexec']['config']['LogRestCalls'] = 'False'
default['dgetaskexec']['config']['TaskExecProcPath'] = ".\\_TaskExecProc\\TaskExecProc.exe"
default['dgetaskexec']['config']['NetOptTaskExecProcPath'] = "._NetOptModelProcessor\\NetOptModelProcessor.exe"
default['dgetaskexec']['config']['ConfigurationScope'] = 'DgeTaskExecutionCoordinator'
default['dgetaskexec']['config']['DeleteTaskProcessFiles'] = 'True'
default['dgetaskexec']['config']['RemoveFinishedTaskDelayMinutes'] = '10'
default['dgetaskexec']['config']['MinimumReviewIntervalSeconds'] = '10'
default['dgetaskexec']['config']['BaseConnectionManagerAddress'] = ''
default['dgetaskexec']['config']['BaseConfigurationManagerAddress'] = ''
default['dgetaskexec']['config']['DataGuruExecFolder'] = "C:\\Temp"
default['dgetaskexec']['config']['K2UsersDatabaseConnectionString'] = ''
default['dgetaskexec']['config']['K2JobsDatabaseConnectionString'] = ''
default['dgetaskexec']['config']['K2ServiceUsername'] = ''
default['dgetaskexec']['config']['K2ServicePassword'] = ''
default['dgetaskexec']['config']['K2ServiceUrl'] = ''

default['dgetaskexec']['artifact']['name'] = 'DgeServiceTaskExec'
default['dgetaskexec']['artifact']['pkg_version'] = '1.4.2.59425'
default['dgetaskexec']['artifact']['host'] = 'http://artifactory.llamadev.local:8081'
default['dgetaskexec']['artifact']['repo'] = 'artifactory'
default['dgetaskexec']['artifact']['path'] = 'octopacks-nuget'
default['dgetaskexec']['artifact']['fullpath'] = 'http://artifactory.llamadev.local:8081/artifactory/octopacks-nuget/DgeServiceTaskExec.1.4.2.59425.nupkg'
default['dgetaskexec']['artifact']['version'] = '0.0.0'
