defmodule Gex.StateObservation do
  alias Gex.StateObservation

  @type action ::
          atom
          | {atom, integer}
          | {atom, integer, integer}
          | {atom, integer, integer, integer}

  # Returns between 0.0 and 1.0, with 1.0 being "good"
  @callback reward(StateObservation.t()) :: float

  # Returns the score of the current player.
  @callback value(StateObservation.t()) :: float

  @callback terminal?(StateObservation.t()) :: boolean

  @callback winner(StateObservation.t()) :: integer

  @callback active_player(StateObservation.t()) :: integer

  @callback advance(StateObservation.t(), action) :: StateObservation.t()

  @callback actions(StateObservation.t()) :: [action]

  @callback feature_vector(StateObservation.t()) :: [float]
end
