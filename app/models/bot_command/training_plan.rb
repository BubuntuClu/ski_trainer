module BotCommand
  class TrainingPlan < Base
    def start
      user.update_column(:status, 'plan_id_asked')
      plans = Plan.all.map { |p| "#{p.id} - #{p.name}" }.join(" \n ")
      send_message("Какой план тренировок подходит для тебя:\n #{plans}")
    end
  end
end
