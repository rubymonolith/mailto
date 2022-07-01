require "mailto/version"
require "mailto/engine"

module Mailto
  class Frontmatter
    DELIMITER = "---".freeze
    NEWLINE = /\r\n?|\n/.freeze
    PATTERN = /\A(#{DELIMITER}#{NEWLINE}(.+?)#{NEWLINE}#{DELIMITER}#{NEWLINE}*)?(.+)\Z/m

    attr_reader :body

    def initialize(content)
      _, @data, @body = content.match(PATTERN).captures
    end

    def data
      @data ? YAML.load(@data) : {}
    end
  end
end
