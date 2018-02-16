module Ruboty
  module Handlers
    class HelloWorld < Base
      # ここを変更すると返すやつを変えれる
      on(/good\z/i, name: "hello_world", description: "Return Hello to World")

      def hello_world(message)
        message.reply('World!')
      end
    end
  end
end
