class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new 

    resp.write "The time is #{time}\n"

    if time.hour > 11
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
