module BotCommand
  class Done < Base
    def start
      user.performed_exercises.find_or_create_by(plan_id: user.plan_id, exercise_id: user.current_exercise_id, is_performed: true)
      send_message('Вы выполнили задание.')
    end
  end
end
