defmodule Gex.Game do
  defmacro __using__(_opts) do
    quote do
      @behaviour Gex.Game
    end
  end

  @type state :: map

  # Returns the starting state of the board, e.g. after board setup
  @callback default_state() :: state

  @callback random_state() :: state

  @optional_callbacks random_state: 0
end
