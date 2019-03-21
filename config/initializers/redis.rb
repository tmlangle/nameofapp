require 'redis'

if Rails.env.development?
  redis = Redis.new(host: 'localhost', port: 6379)
else Rails.env.production?
  redis = Redis.new(url: ENV["REDIS_URL"])
end

redis.set("mykey", "hello world")
# => "OK"\\

redis.get("mykey")
# => "hello world"
