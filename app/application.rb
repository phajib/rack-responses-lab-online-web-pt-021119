class Application

    def call(env)
      resp = Rack::Response.new
      resp.write "What time is it?"

      current_time = Time.now

      if current_time.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end

      resp.finish
    end
  
  end