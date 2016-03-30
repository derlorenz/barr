require 'barr/block'
require 'ruby-mpd'

module Barr
  module Blocks
    class Mpd < Block

      def initialize(opts = {})
        super
	mpd = MPD.new 'localhost', 6600
      end

      def update!
        @output = mpd.current_song
      end

      private

      def sys_cmd
        `whoami`.chomp
      end

    end
  end
end
