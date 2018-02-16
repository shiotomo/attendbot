module Ruboty
  module Handlers
    class HelloWorld < Base
      # ここを変更すると返すやつを変えれる
      on(/今日の日程\z/i, name: "hello_world", description: "Return Hello to World")

      def hello_world(message)
        message.reply('今日の日程を返します!')
      end
    end
  end
end
