module McRails
  class EnvProxy
    def inspect
      ENV['RAILS_ENV'] || 'development'
    end

    def method_missing(name)
      puts "Ghost method: #{name}"
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end