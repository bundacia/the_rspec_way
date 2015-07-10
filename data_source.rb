#fake DataSource to get tests to run (not pass)
class DataSource
  DEFAULT_TIMEOUT = 11
  attr :timeouts
  def initialize(args={})
    @timeouts = args[:timeout] || {}
  end

  def timeout(action)
    case timeouts
    when Hash
      timeouts[action] || DEFAULT_TIMEOUT
    when Numeric
      timeouts
    else
      DEFAULT_TIMEOUT
    end
  end
end
