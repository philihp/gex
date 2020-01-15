defmodule Gex.State do
  defstruct []

  defmacro __using__(_opts) do
    quote do
      @behaviour Gex.State

      def reward(state) do
        score(state)
      end

      defoverridable reward: 1
    end
  end

  @type action ::
          atom
          | {atom, integer}
          | {atom, integer, integer}
          | {atom, integer, integer, integer}

  @type state :: map

  # Score according to game laws. Higher is better for active player.
  @callback score(state) :: float

  # OPTIONAL, can just be game score, but could be something else
  @callback reward(state) :: float
  @optional_callbacks reward: 1

  @callback terminal?(state) :: boolean

  @callback winner(state) :: integer

  @callback active_player(state) :: integer

  @callback advance(state, action) :: state

  @callback actions(state) :: [action]

  @callback feature_vector(state) :: [float]
end
