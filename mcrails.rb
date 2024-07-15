#
# New method for looking up the environment
#

module McRails
  class EnvProxy
    def to_s
      ENV['MCRAILS_ENV'] || 'development'
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end

# McRails.env
# McRails.env.to_s
