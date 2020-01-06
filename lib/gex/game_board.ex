defmodule Gex.GameBoard do
  alias Gex.StateObservation

  # Returns the starting state of the board, e.g. after board setup
  @callback default_state() :: StateObservation.t()

  @callback random_state() :: StateObservation.t()

  @optional_callbacks random_state: 0
end
