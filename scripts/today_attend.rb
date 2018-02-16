require_relative 'db_config'

require "pg"

module Ruboty
  module Handlers
    class Today_attend < Base
      # ここを変更すると返すやつを変えれる
      on(/今日の出席/, name: "today_attend", description: "Return Hello to World")

      def today_attend(message)
        con = DbConfig.new().con
        date = Date.today

        date = "attends" + date.to_s.tr("-", "_")

        mes = con.exec("select * from #{date};")

        mes.each do |d|
          puts d.keys
          puts d
          message.reply(d.values)
        end

      end
    end
  end
end
