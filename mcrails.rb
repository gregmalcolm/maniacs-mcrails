module McRails
  class EnvProxy
  end

  def self.env
    #ENV['MCRAILS_ENV'] || 'development'

    proxy = EnvProxy.new
    proxy
  end
end