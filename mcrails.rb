#
# Finish messing with method_missing
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
      if name.end_with?('?')
        # Take off "?" suffix
        method_word = name.to_s.chop

        return method_word == to_s
      end

      super
    end
  end

  def self.env
    #McRails::EnvProxy.new.to_s
    McRails::EnvProxy.new
  end
end

# McRails::EnvProxy.new.development?
# McRails::EnvProxy.new.testing?
# McRails::EnvProxy.new.bueller?
# McRails::EnvProxy.new.microwave_water

# McRails.env
# McRails.env.development?
