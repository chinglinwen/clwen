pid="$( sudo netstat -ntpl 2>/dev/null | grep 1314 | awk '{ print $7 }' | awk '{ print $1 }' FS='/' )"
if [ -n $pid ]; then
  sudo kill -9 $pid
fi
hugo server --bind 0.0.0.0 -b http://clwen.com/ -p 1314 -D &> test.log &
