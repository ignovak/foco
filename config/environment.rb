# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Foco::Application.initialize!

$record_on = false
$time = 0
# pig = IO.popen('./focoTool', 'w+')
pig = IO.popen('bash q.sh', 'w+')

Thread.new do
  loop do
    if $record_on
      pig.puts('start')
      pig.puts($review_id)
      query = "INSERT INTO review_data (time,review_id,attention,meditation,delta,theta,alpha1,alpha2,beta1,beta2,gamma1,gamma2,signal_quality) values (#{$time * 10},#{$review_id},#{pig.gets.strip})"
      begin
        ActiveRecord::Base.connection.execute(query)
      rescue
        puts "\n\n\nERROR\n\n\n"
      end
      $time += 0.5
      sleep 0.5
    else
      if $time > 0
puts "\n\n\nstop\n\n"
        pig.puts('stop')
        $time = 0
      end
      sleep 0.1
    end
  end
end
