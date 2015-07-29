MODE=${MODE:-master}

if [ "$MODE" == "master" ]; then
  echo "master mode"
  redis-server 
elif [ "$MODE" == "slave" ]; then
  echo "slave mode"
  redis-server --slaveof redis-master 6379
else
  echo "invaild mode"
  exit 1
fi
