# it's the init, init 
#
class apache (
  String $install_name,
  String $install_ensure,
  String $config_ensure,
  String $config_path,
  Enum["running", "stopped"] $service_ensure, 
  String $service_name,
  Boolean $service_enable,
) {
  contain apache::install
  contain apache::config
  contain apache::service

  Class['::apache::install']
  -> Class['::apache::config']
  ~> Class['::apache::service']
}
