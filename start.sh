#/bin/bash

# run all tasks in the background         
npm start &          # js server
python3 server.py &  # python server
bin/run &            # nginx as a reverse proxy
                                  
# if the current shell is killed, also terminate all its children     
trap "pkill SIGTERM -P $$" SIGTERM                            
                                                                   
# wait for a single child to finish,                               
wait -n                                                  
# then kill all the other tasks                          
pkill -P $$                                
