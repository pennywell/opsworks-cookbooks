node[:deploy].each do |application, deploy|
  if defined? deploy["environment_variables"]["laravel"] && deploy["environment_variables"]["laravel"] == "true"
    bash 'laravel-deploy' do
      code <<-EOH
      cp .env.example .env
      /usr/bin/php artisan key:generate
      chmod -R 777 storage/
      EOH
      cwd deploy[:current_path]
    end
  end  
end
