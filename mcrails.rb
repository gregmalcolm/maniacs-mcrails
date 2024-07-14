module McRails
  class EnvProxy
    def to_s
      ENV['MCRAILS_ENV'] || 'development'
    end

    def inspect
      # surround in quotes
      %Q["#{to_s}"]
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end