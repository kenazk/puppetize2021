plan puppetize::configure_puppet_agent(
  String[0] $puppetserver,
  TargetSpec $target
){
  run_command('sudo curl -k https://ip-172-31-19-181.us-west-1.compute.internal:8140/packages/current/install.bash | sudo bash)
#  run_command("sudo puppet config set server ${puppetserver}", $target)
  run_command('sudo puppet agent -t', $target)
}
