class Dashboard

    def day_net_calories
      current_day = Time.now.strftime("%Y-%m-%d")
      day_calories_consumed = CaloriesConsumed.where(date_consumed: current_day).sum(:calories_consumed)
      day_calories_burned = ExercisesPerformed.where(date_burned: current_day).sum(:calories_burned)
      day_calories_consumed - day_calories_burned
    end

    def statistics
      {day_net_calories: day_net_calories}
    end

end
