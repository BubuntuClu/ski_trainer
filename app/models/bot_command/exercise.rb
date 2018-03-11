module BotCommand
  class Exercise < Base
    def start
      plan = Plan.find_by(id: user.plan_id)
      if plan.exercises.pluck(:order).include?(text&.to_i)
        exercise = plan.exercises.find_by(order: text&.to_i)
        user.update_column(:current_exercise_id, exercise.id)
        send_message("#{exercise.title}\n #{exercise.description}\n
        Для того что бы отметить занятие как выполненное, введите /done или /выполнено.\n
        Вы можете вернуться к списку занятий командой /list или /список.")
      else
        send_message('Такого номера занятия нет в вашем плане. Попробуйте ввести номер еще раз.')
      end
    end
  end
end
