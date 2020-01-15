defmodule Gex.Agent do
  defmacro __using__(_opts) do
    quote do
      @behaviour Gex.Agent

      # defoverridable value: 1
    end
  end

  # Estimate of final score of active player, may call Agent.value
  @callback score(State.t()) :: float

  # Estimate of final game value, MUST NOT not call Agent.score
  # This would be used in an MCTS where we don't reach a terminal state, or other tree searches
  @callback value(State.t()) :: float
end
