module BotCommand
  class Gender < Base
    def start
      user.update_column(:status, 'gender_asked')
      send_message('К какому полу ты себя относишь?
        1 - Мужской
        2 - Женский
        3 - Другой')
    end
  end
end
