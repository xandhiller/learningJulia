module Tmp

    macro sayhello()
      return :( println("Hello, world."))
    end

    # List all your vars/functions you want to call without a struct prefix.    
    export g, sayhello

    # Your definitions here.
    function g()
        z = 1
        return z
    end


end
