#
# Mcrails.env
#

module McRails
  def self.env
    ENV['MCRAILS_ENV'] || 'development'
  end
end