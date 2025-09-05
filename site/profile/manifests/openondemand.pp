class profile::openondemand {
  include openondemand
  
  @consul::service { 'ondemand':
    port => openondemand::custom_port,
    tags => ['ondemand'],
  }
}