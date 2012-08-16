require 'rack'

class Rack::Chuck
  attr_reader :app

  def initialize(app)
    @app = app
  end

  def facts
    @@chuck ||= IO.read(File.expand_path('../chuck/facts.txt',__FILE__)).split(/\s*\n%\n\s*/)
  end

  def fact
    facts[rand(facts.length)].split(/\n/).join(' -- ')
  rescue
  end

  def call(env)
    status, headers, response = app.call(env)
    headers["X-Chuck-Norris"] = fact unless facts.empty?

    [status, headers, response]
  end
end
