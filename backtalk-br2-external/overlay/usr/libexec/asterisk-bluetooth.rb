#!/usr/bin/ruby

require 'json'

devices = JSON.parse(`/usr/libexec/bluez-paired-devices.py`, symbolize_names: true)

exit(1) if devices.empty?

device = devices.cycle do |e|
  port = `sdptool search --bdaddr #{e[:address]} HF`.slice(/Channel: (\d+)/, 1)

  if Process.last_status.success?
    break e.merge(port: port)
  end
end

File.open('/etc/asterisk/chan_mobile.conf', 'w') do |conf|
  conf.puts '[adapter]'
  conf.puts "id=#{device[:adapter][:id]}"
  conf.puts "address=#{device[:adapter][:address]}"
  conf.puts
  conf.puts "[dev_#{device[:address].tr(':', '_')}]"
  conf.puts "adapter=#{device[:adapter][:id]}"
  conf.puts "address=#{device[:address]}"
  conf.puts "port=#{device[:port]}"
  conf.puts 'context=incoming-mobile'
end

