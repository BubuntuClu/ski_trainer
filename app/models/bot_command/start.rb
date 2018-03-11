module BotCommand
  class Start < Base
    def start
      send_message("Добро пожаловать, #{user.first_name}. Если ты тут оказался, значит ты хочешь заниматься лыжным спортом.
        Давай начнем.")
    end
  end
end
