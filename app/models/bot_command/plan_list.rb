module BotCommand
  class PlanList < Base
    def start
      user.update_column(:status, 'worked')
      performed_exercises = user.performed_exercises.pluck(:exercise_id)
      exercises = Plan.find_by(id: user.plan_id).exercises.map do |ex| 
        "#{ex.order} - #{ex.title} #{performed_exercises.include?(ex.id) ? '(выполнено)' : ''}" 
      end.join("\n")

      send_message("Список занятий по твоему плану:\n #{exercises} \n
        Для просмотра списка занятий введите /list или /список. Для просмотра конкретного занятия введите его номер.")
    end
  end
end
