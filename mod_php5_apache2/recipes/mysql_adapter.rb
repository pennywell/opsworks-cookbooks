package 'php-mysql' do
  package_name value_for_platform_family(
    'rhel' => 'php71-mysqlnd',
    'debian' => 'php5-mysql'
  )
  retries 3
  retry_delay 5
end
