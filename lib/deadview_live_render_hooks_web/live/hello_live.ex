defmodule DeadviewLiveRenderHooksWeb.HelloLive do
  use DeadviewLiveRenderHooksWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <div phx-hook="HelloLiveView" id="live-view">
      Live View
    </div>
    """
  end
end
