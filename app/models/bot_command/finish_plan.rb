module BotCommand
  class FinishPlan < Base
    def start
      user.update_columns(status: 'finished', plan_id: nil, current_exercise_id: nil)
      user.performed_exercises.destroy_all
      user.save
      send_message('Поздравляем! Вы завершили все задания по плану! Вы молодец! Но нельзя останавливаться на достигнутом.')
    end
  end
end
