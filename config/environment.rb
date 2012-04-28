# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Foco::Application.initialize!

$record_on = false
pig = IO.popen('bash q.sh', 'w+')

Thread.new do
  loop do
    if $record_on
      pig.write('start')
      put_to_db(pig.gets)
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
