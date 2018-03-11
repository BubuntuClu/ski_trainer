class BotMessageDispatcher
  attr_reader :message, :user, :typed_text

  def initialize(message, user)
    @message = message
    @typed_text = message[:message][:text].downcase
    @user = user
  end

  def process
    if user.status == 'worked'
      if typed_text == '/list' || typed_text == '/список'
        BotCommand::PlanList.new(user, message).start
      elsif typed_text == '/done' || typed_text == '/выполнено'
        BotCommand::Done.new(user, message).start
        if user.performed_exercises.count == Plan.find_by(id: user.plan_id).exercises.count
          BotCommand::FinishPlan.new(user, message).start
        end
      else
        BotCommand::Exercise.new(user, message).start
      end
    end

    ask_block('plan_id', 'BotCommand::PlanList')
    ask_block('age', 'BotCommand::TrainingPlan')
    ask_block('gender', 'BotCommand::Age')

    if typed_text == '/start' && user.gender.blank?
      BotCommand::Start.new(user, message).start
      BotCommand::Gender.new(user, message).start
    end
    
    BotCommand::TrainingPlan.new(user, message).start if user.status == 'finished'
  end

  private

  def wrong_command
    BotCommand::Wrong.new(user, message).start
  end

  def ask_block(block_name, command_to_complete)
    if user.status == "#{block_name}_asked"
      if user.updated_field?(block_name, typed_text)
        command_to_complete.safe_constantize.new(user, message).start
      else
        wrong_command
      end
    end
  end
end
