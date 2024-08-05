#!/bin/bash

#cd /home/ubuntu/node/angellist-node.js-app && /bin/sh deploy.sh

#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/node/angellist-node.js-app/scripts/

# Pull the latest Docker images
sudo docker-compose pull

# Stop and remove existing containers
sudo docker-compose down

# Start new containers with the updated image
sudo docker-compose up -d

