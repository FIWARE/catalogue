#!/bin/bash

echo "api-management"
echo "--------------"
./image-clone.sh api-management
echo ""
echo "core"
echo "--------------"
./image-clone.sh core
echo ""
echo "data-publication"
echo "----------------"
./image-clone.sh data-publication
echo ""
echo "iot-agents"
echo "----------"
./image-clone.sh iot-agents
echo ""
echo "processing"
echo "----------"
./image-clone.sh processing
echo ""
echo "robotics"
echo "--------"  
./image-clone.sh robotics
echo ""
echo "security"
echo "--------"
./image-clone.sh security
echo ""
echo "third-party"
echo "-----------"
./image-clone.sh third-party

