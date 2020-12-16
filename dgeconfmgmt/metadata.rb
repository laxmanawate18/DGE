name 'dgeconfmgmt'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures dgeconfmgmt'
long_description 'Installs/Configures dgeconfmgmt'
version '0.2.83'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'llama_install'
depends 'artifactory_query'
