defmodule Gex.GameBoard do
  alias Gex.StateObservation

  # Returns the starting state of the board, e.g. after board setup
  @callback default_state() :: StateObservation.t()

  # Optional, choose a random start state, which is useful for training
  # @callback random_state() :: %StateObservation{}

  # @optional_callbacks random_state: 0
end
