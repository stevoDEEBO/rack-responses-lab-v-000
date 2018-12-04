require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    #resp.write "Hello, World"

    now = Time.now.to_i
    day_ago = (Time.now - (60 * 60 * 24)).to_i
    binding.pry
    time = rand(day_ago..now)

    if time << 11:59.to_i
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
