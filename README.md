# copy-filebeat-registry Chef cookbook

This is an extremely simple (not to say borderline dumb!) Chef cookbook that simply creates a service whose job is to copy filebeat's registry to a world-readable place every few seconds, so that it can be subsequently used by other services/components.

[This GitHub issue/PR](https://github.com/elastic/beats/pull/6455) gives more context as to why this could occasionally be needed; and this cookbook really just is a hacky workaround until such times as Filebeat allows to set the permissions of its registry files.

## Usage

Just include the `copy_filebeat_registry` recipe in your run list. The attributes are documented directly in the [attributes' file](https://github.com/wk8/cookbook-copy-filebeat-registry/blob/master/attributes/default.rb).