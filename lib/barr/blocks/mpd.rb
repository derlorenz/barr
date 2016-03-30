require 'barr/block'
require 'ruby-mpd'

module Barr
  module Blocks
    class Mpd < Block

      def initialize(opts = {})
        super
      end

      def update!
        @output = sys_cmd
      end

      private

      def sys_cmd
        `whoami`.chomp
      end

    end
  end
end
