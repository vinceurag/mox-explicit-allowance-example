defmodule Phackers.Client.InfoHandler do
  @provider Application.compile_env(:phackers, __MODULE__)[:info_handler_provider]

  def get_info(creds) do
    @provider.get_info(creds)
  end
end
