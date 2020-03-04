# it's the init, init 
#
class apache (
  String $install_name,
  String $install_ensure,
  String $config_ensure,
  String $config_path,
) {
  include apache::install
  include apache::config

  Class['::apache::install']
  -> Class['::apache::config']
}
