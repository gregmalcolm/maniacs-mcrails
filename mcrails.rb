#
# EnvProxy can also display environment
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
    # Deprected
    McRails::EnvProxy.new.to_s
  end
end

# McRails.env
# McRails::EnvProxy.new.to_s
