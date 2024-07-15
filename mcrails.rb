#
# Refactor to look up environment in EnvProxy
#

module McRails
  class EnvProxy
    def to_s
      ENV['MCRAILS_ENV'] || 'development'
    end
  end

  def self.env
    # Deprected
    #ENV['MCRAILS_ENV'] || 'development'
    McRails::EnvProxy.new.to_s
  end
end

# McRails.env
# McRails::EnvProxy
# McRails::EnvProxy.to_s
