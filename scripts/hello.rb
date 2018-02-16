module Ruboty
  module Handlers
    class Today_attend < Base
      # ここを変更すると返すやつを変えれる
      on(/今日の出席\z/i, name: "today_attend", description: "Return Hello to World")

      def today_attend(message)
        message.reply('今日の出席を返します')
      end
    end
  end
end
