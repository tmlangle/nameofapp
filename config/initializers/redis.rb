if Rails.env.development?
  $redis = Redis.new(host: 'localhost', port: 63790]
  else
    $redis = Redis.new(url: ENV["REDIS_URL"])]
  end
