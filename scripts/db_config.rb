require 'pg'

class DbConfig
  def con
    connection = PG::connect(
      host: "localhost",
      user: "attendbot",
      password: "password",
      dbname: "attendbot",
      port: 5432
    )
  end
end
