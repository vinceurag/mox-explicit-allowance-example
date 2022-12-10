import Config

config :phackers, Phackers.Client.InfoHandler,
  info_handler_provider: Phackers.Client.Provider.Grpc

import_config "#{config_env()}.exs"
