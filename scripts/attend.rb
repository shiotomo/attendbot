module Ruboty
  module Handlers
    class Attend < Base
      # ここを変更すると返すやつを変えれる
      on(/出席/, name: "attend", description: "Return Hello to World")

      def attend(message)
        message.reply('出席します')
      end
    end
  end
end
