module McRails
  class EnvProxy
    def method_missing(name)
      puts "Ghost method: #{name}"
    end
  end

  def self.env
    #ENV['RAILS_ENV'] || 'development'

    proxy = EnvProxy.new
    proxy
  end
end