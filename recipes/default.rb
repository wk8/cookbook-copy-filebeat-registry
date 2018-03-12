include_recipe 'runit'

directory ::File.dirname(node['copy_filebeat_registry']['to']) do
  owner node['copy_filebeat_registry']['user']
  group node['copy_filebeat_registry']['group']
  recursive true
end

runit_service 'copy-filebeat-registry' do
  default_logger true
end
