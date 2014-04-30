module Puppet::Parser::Functions
    newfunction(:add_prefix_to_keys, :type => :rvalue) do |args|
        the_hash = args[0]
        prefix = args[1]
        Hash[the_hash.map {|key, value|
            ["#{prefix}-#{key}", value]
        }]
    end
end
