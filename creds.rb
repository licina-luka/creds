#!/usr/bin/ruby

r = (-> fp { File.join (ENV.fetch 'HOME'), fp } \
     >> (File.method :read))

puts r.call('.creds.json')
