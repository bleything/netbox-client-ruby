require 'netbox_client_ruby/entity'

module NetboxClientRuby
  module DCIM
    class Site
      include Entity

      id id: :id
      readonly_fields :count_prefixes, :count_vlans, :count_racks, :count_devices,
                      :count_circuits

      deletable true
      path 'dcim/sites/:id.json'
      creation_path 'dcim/sites/'
    end
  end
end
