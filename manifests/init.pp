# it's the init, init 
#
class apache (
  String $install_name,
  String $install_ensure,
) {
  include apache::install
}
