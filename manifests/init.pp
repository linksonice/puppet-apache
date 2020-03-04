# it's the init, init 
#
class apache (
  String $install_name,
  String $install_ensure,
  String $config_ensure,
  String $config_path,
  String $service_name,
) {
  include apache::install
  include apache::config
  include apache::service

  Class['::apache::install']
  -> Class['::apache::config']
  ~> Class['::apache::service']
}
