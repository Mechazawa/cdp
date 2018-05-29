#!/usr/bin/env fish

function cdp 
    set old (pwd)
    while not test -e .env -o -e .idea -o -e .git -o -e .hg
        cd ..
        
        if [ '/' = (pwd) ]
            cd $old
            echo 'Could not descend to a project directory'
            return 1
        end
    end
    
    return 0
end

