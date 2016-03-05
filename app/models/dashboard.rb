class Dashboard

    def day_net_calories
      current_day = Time.now.strftime("%Y-%m-%d")
      day_calories_consumed = CaloriesConsumed.where(date_consumed: current_day).sum(:calories_consumed)
      day_calories_burned = ExercisesPerformed.where(date_burned: current_day).sum(:calories_burned)
      day_calories_consumed - day_calories_burned
    end

    def day_miles_walked
      #2112 steps on average in 1 mile
      current_day = Time.now.strftime("%Y-%m-%d")
      day_steps_taken = StepsTaken.where(date_walked: current_day).sum(:steps_taken)
      day_miles_walked = day_steps_taken/2112.0
    end

    def day_weight
      previous_day = (Time.now - 86400).strftime("%Y-%m-%d")
      current_day = Time.now.strftime("%Y-%m-%d")
      previous_day_weight = Weight.where(date_weighed: previous_day).last
      current_day_weight = Weight.where(date_weighed: current_day).last
      if current_day_weight && previous_day_weight
        weight_change = current_day_weight.weight - previous_day_weight.weight
      elsif current_day_weight
        "Weight not entered yesterday. Cannot calculate difference."
      elsif previous_day_weight
        "Weight not entered today. Cannot calculate difference."
      else
        "You need to be better at entering your weight. Cannot calculate based on nothing."
      end
    end

    def statistics
      {day_net_calories: day_net_calories,
       day_miles_walked: day_miles_walked,
       day_weight: day_weight}
    end

end
