# require_relative 'db_config'

module Ruboty
  module Handlers
    class Attend < Base
      # ここを変更すると返すやつを変えれる
      on(/出席/, name: "attend", description: "Return Hello to World")

      def attend(message)
        # con = DbConfig.new().con

        # p message

        # テーブルの作成
        # begin
        #   con.exec("create table attends (student_number varchar(80);")
        # rescue
        #   puts "テーブルが存在します"
        # end

        message.reply('出席します')
      end
    end
  end
end
