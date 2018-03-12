# this is the location of the filebeat registry file
# see https://www.elastic.co/guide/en/beats/filebeat/current/migration-registry-file.html
default['copy_filebeat_registry']['from'] = '/var/lib/filebeat/registry'
# this is where the registry will be periodically copied by the service
default['copy_filebeat_registry']['to'] = '/var/opt/copy_filebeat_registry/registry'

# those are the permissions to set on the copy - should be a string, not an octal int!
default['copy_filebeat_registry']['mode'] = '0644'
# and who owns it
default['copy_filebeat_registry']['user'] = 'root'
default['copy_filebeat_registry']['group'] = 'root'

# that's how often the copy will be made, in seconds
default['copy_filebeat_registry']['interval'] = 5
