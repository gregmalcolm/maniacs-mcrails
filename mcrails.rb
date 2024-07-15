#
# Setting up an Env Proxy class
#

module McRails
  class EnvProxy
  end

  def self.env
    #ENV['MCRAILS_ENV'] || 'development'

    EnvProxy.new
  end
end

# McRails.env