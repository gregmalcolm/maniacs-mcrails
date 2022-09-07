module McRails
  class EnvProxy
    def to_s
      ENV['RAILS_ENV'] || 'development'
    end

    def inspect
      # surround in quotes
      %Q["#{to_s}"]
    end

    def method_missing(name)
      return "Ghost Method" if name.end_with?('?')

      super
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end