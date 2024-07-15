#
# Setting up an Env Proxy class
#

module McRails
  class EnvProxy
  end

  def self.env
    # Deprected
    ENV['MCRAILS_ENV'] || 'development'
  end
end

# McRails.env
# McRails::EnvProxy
