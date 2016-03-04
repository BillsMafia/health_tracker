class DashboardController < ApplicationController
  def index
    @statistics = Dashboard.new.statistics
  end
end
