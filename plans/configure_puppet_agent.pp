plan puppetize::configure_puppet_agent(
  String[0] $puppetserver,
  TargetSpec $target
){
  run_command('sudo ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet', $target)
  run_command("sudo puppet config set server ${puppetserver}", $target)
  run_command('sudo puppet agent -t', $target)
}
