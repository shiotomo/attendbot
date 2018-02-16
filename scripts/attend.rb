require_relative 'db_config'

require "pg"

module Ruboty
  module Handlers
    class Attend < Base
      # ここを変更すると返すやつを変えれる
      on(/出席/, name: "attend", description: "Return Hello to World")

      def attend(message)
        con = DbConfig.new().con

        # 学籍番号取得
        p message.from_name
        number =  message.from_name

        date = Date.today

        date = "attends" + date.to_s.tr("-", "_")

        puts date

        # テーブルの作成
        begin
          con.exec("create table #{date} (student_number varchar(80));")
          puts "yahoo!"
        rescue
          puts "テーブルが存在します"
        end

        # exsit_number = con.exec("select '#{number}' from #{date}")

        # exsit_number = exsit_number.to_s

        # if !exsit_number.include?("#{number}") 
        #   message.reply('出席してます')
        # else
        #   con.exec("insert into #{date} (student_number) values ('#{number}');")
        #   message.reply('出席します')
        # end

        con.exec("insert into #{date} (student_number) values ('#{number}');")
        message.reply('出席します')
      end
    end
  end
end
