defmodule Phackers.Client.Provider do
  @callback get_info(creds :: String.t()) :: map()
end
