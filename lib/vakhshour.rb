#--
#    Red Vakhshour - Ruby implementation of Vakhshour
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#++
require 'ramp'

require "vakhshour/version"

#:nodoc:
module Vakhshour

  # This class represent a network node, mostly a Vakhshour server any given
  # parameter will pass directly to the AmpClient initialize method
  class Node
    
    # host:: Remote vakhshour server address
    # port:: Port of the remote server.
    # kwargs:: optional arguments
    # * async:: If this value be true, Vakhshour will process the response of
    #           the command asynchronously 
    # * ssl_key:: Path of SSL key file.
    # * ssl_cert:: Path of SSL cert file.
    def initialize (host='localhost',
                    port=8888,
                    kwargs={
                      async: false,
                      ssl_key: nil,
                      ssl_cert: nil,
                    })
      @remote = Ramp::AmpClient.new host, port, kwargs
      
    end

    # Send and event to the vakhshour server.
    # name:: Name of event to send
    # sender:: Who is sednig the event
    # kwargs:: A hash representing the arguments of the command
    #          Vakhshour will pass these arguments to event handlers.
    def send_event(name, sender, kwargs)
      args = {
        name: name,
        sender: sender,
        kwargs: kwargs,
      }
      @remote.call_remote(Event, args)

    end

  end
end
