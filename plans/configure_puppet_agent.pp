plan puppetize::configure_puppet_agent
{
  run_command('curl -k https://ip-172-31-19-181.us-west-1.compute.internal:8140/packages/current/install.bash | bash')
  run_command('puppet agent -t')
}
