# dgejobexec

## Overview
This cookbook installs and configures DGE Job Coordinator Service. 

## Process

### [Default recipe](./recipes/default.rb)
Call the Install recipe

### [Install recipe](./recipes/install.rb)
The Install recipe first makes sure that the necessary directories are present for the install, then proceeds to pull the desired artifact from Atrifactory. After the artifact is aquired it is unarchived. Once the artifact is unarchived the cookbook installs the service. 

The Install recipe is ran during the image creation process.

### [Config recipe](./recipes/config.rb)
The Config recipe uses attribues to template out a erb file with the appropriate connection strings for a given environment. After the service configuration file is in place with the correct values, the service is restarted.

The Config recipe is ran at boot time, and not during the image creation process. 


## Usage

### Install
The only notable attribute that should need to be overriden during the install process is the node['dgejobexec']['artifact']['name'], this artifact name denotes the name of the artifact as well as the version. 
There are many other attributes that can be overriden that are used in the install process, however all are configured with sane defaults. 

### Configure
Notable attributes that you would want to override for configuring the service would be the following:
* node['dgejobexec']['config']['BaseServerAddress'] : This configures the server address the application binds to. Default: http://localhost:9001
* node['dgejobexec']['config']['BaseNotificationManagerAddress'] : This configures the address the application uses to reach the Notification Manager Service. Default: http://localhost:9007
* node['dgejobexec']['config']['BaseConfigurationManagerAddress'] : This configures the address the application uses to reach the Configuration Manager Service. Default: http://localhost:9008
* node['dgejobexec']['config']['JobDatabaseConnectionString'] : This configures the database connection string used by the application for its own database.
* node['dgejobexec']['config']['LogConnectionString'] : This configures the database connection string used by the application for logging. 
* node['dgejobexec']['config']['LogTableName'] : This configures the database table name the application uses for logging. 

## Example runtime script
``` Powershell
echo "log_level :info" | Out-File -Encoding ASCII C:\chef\client.rb
echo "log_location STDOUT" | Add-Content C:\chef\client.rb
echo "ssl_verify_mode :verify_none" | Add-Content C:\chef\client.rb
echo "chef_server_url `"${var.chef_server}`"" | Add-Content C:\chef\client.rb
echo "validation_client_name `"packer-validator`"" | Add-Content C:\chef\client.rb
echo "validation_key `"C:\\chef\\validator.pem`"" | Add-Content C:\chef\client.rb

$json = @{
  dgejobexec = @{
    config = @{
      JobDatabaseConnectionString = "Server=${var.k2_database_host}:${var.database_port};Database=DataGuruEnterprise;User Id=${var.database_user};Password=${var.database_password};"
      LogTableName = 'LogEntries'
      LogConnectionString = "Server=${var.k2_database_host}:${var.database_port};Database=K2Logs;User Id=${var.database_user};Password=${var.database_password};"
    }
  }
}

$json | ConvertTo-Json | Out-File -Encoding ASCII C:\chef\attr.json

chef-client.bat -o "recipe[dgejobexec::config.rb]" -j C:\chef\attr.json -c C:\chef\client.rb
```
