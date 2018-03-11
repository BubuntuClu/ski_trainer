module BotCommand
  class Wrong < Base
    def start
      send_message("Введены неверные данные. Попробуйте еще раз.")
    end
  end
end
