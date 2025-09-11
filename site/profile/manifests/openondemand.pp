class profile::openondemand {
  include openondemand
  
  @consul::service { 'ondemand':
    port => $openondemand::custom_port,
    tags => ['ondemand'],
  }
  
  $openondemand::dex_config['connectors']['config']['bindPW'] = lookup('profile::freeipa::server::admin_password')
}