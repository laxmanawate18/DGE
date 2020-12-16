name 'dgeconnmgmt'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures dgeconnmgmt'
long_description 'Installs/Configures dgeconnmgmt'
version '0.1.57'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'artifactory-artifact','= 0.5.2'
depends 'artifactory_query'
