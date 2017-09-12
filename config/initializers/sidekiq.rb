redis_server = '127.0.0.1' # redis服务器
redis_port = 6379 # redis端口
redis_db_num = 0 # redis 数据库序号
redis_namespace = '_eportfolio_default_sidekiq' #命名空间，自定义的

Sidekiq.configure_server do |config|
  p redis_server  # 这个可以去掉
  config.redis = { url: "redis://localhost:6379", namespace: redis_namespace }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://localhost:6379", namespace: redis_namespace }
end