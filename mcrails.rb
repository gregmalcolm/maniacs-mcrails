#
# Ghost methods
#

module McRails
  class EnvProxy
    def to_s
      ENV['MCRAILS_ENV'] || 'development'
    end

    def inspect
      %Q["#{to_s}"]
    end

    # def method_missing(name)
    #   return "Ghost Method" if name.end_with?('?')

    #   super
    # end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end