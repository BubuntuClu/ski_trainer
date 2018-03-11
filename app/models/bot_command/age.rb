module BotCommand
  class Age < Base
    def start
      user.update_column(:status, 'age_asked')
      send_message("Сколько тебе лет?")
    end
  end
end
