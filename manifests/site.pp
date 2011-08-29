import "common"
import "munin"

class ph {
  $munin_host = $ipaddress_dummy0
  $munin_cidr_allow = "192.168.0.0/16"
  $munin_interfaces = "eth0"

  include munin::client
}

node 'r4.osinka.int' {
  include ph
}

# Vagrant test node
node 'debian64' {
  include ph
}
