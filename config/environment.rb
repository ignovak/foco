# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Foco::Application.initialize!

$record_on = false
pig = IO.popen('./focoTool', 'w+')
# pig = IO.popen('bash q.sh', 'w+')

Thread.new do
  loop do
    if $record_on
      pig.puts('start')
      pig.puts($review_id)
      data = pig.gets.strip
      puts data
      query = "INSERT INTO review_data (time,review_id,attention,meditation,delta,theta,alpha1,alpha2,beta1,beta2,gamma1,gamma2,signal_quality) values (#{$time},#{$review_id},#{data})"
      puts query
      begin
        ActiveRecord::Base.connection.execute(query)
      rescue
        puts "\n\n\nERROR\n\n\n"
      end
      $time += 0.5
      started = true
    else
      if started
        pig.write('stop')
        started = false
      end
      sleep 0.1
    end
  end
end

# Thread.new do
#   loop do
#     if $record_on
#       data = []
#       10.times do
#         if $record_on
#           pig.write('start')
#           data << pig.gets
#         else
#           pig.write('stop')
#           break
#         end
#       end
#       put_to_db(data)
#     else
#       sleep 0.1
#     end
#   end
# end
