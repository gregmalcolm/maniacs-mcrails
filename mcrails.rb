#
# Direct enquiries to ghost methods
#

module McRails
  class EnvProxy
    def to_s
      ENV['MCRAILS_ENV'] || 'development'
    end

    def inspect
      %Q["#{to_s}"]
    end

    def method_missing(name)
      return "Ghost Method" if name.end_with?('?')

      super
    end
  end

  def self.env
    # Deprected
    McRails::EnvProxy.new.to_s
  end
end

# McRails::EnvProxy.new.development?
# McRails::EnvProxy.new.testing?
# McRails::EnvProxy.new.microwave_water