defmodule Phackers.Client.Provider.Grpc do
  @behaviour Phackers.Client.Provider

  @impl Phackers.Client.Provider
  def get_info(creds) do
    %{creds: creds}
  end
end
