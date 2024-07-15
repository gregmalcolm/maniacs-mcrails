#
# Back to displaying the environment
#

module McRails
  class EnvProxy
    def to_s
      ENV['MCRAILS_ENV'] || 'development'
    end

    def inspect
      to_s
      #%Q["#{to_s}"]
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end