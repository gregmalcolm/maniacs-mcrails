module McRails
  class EnvProxy
    def inspect
      ENV['RAILS_ENV'] || 'development'
    end
  end

  def self.env
    #ENV['RAILS_ENV'] || 'development'

    proxy = EnvProxy.new
    proxy
  end
end