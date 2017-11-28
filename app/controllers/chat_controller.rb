class ChatController < ApplicationController
  def index
    @talks = Talk.all.order(created_at: :asc)
  end
end
