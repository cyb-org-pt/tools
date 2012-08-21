#for i in {1..1000} ; do wget -O /dev/null localhost:12345 &  done
#for i in {1..100} ; do nc localhost 12345 > /dev/null &  done

# Install apache2-utils to get ab.
# ab -r -n 10000 -c 8 http://127.0.0.1:12345/ # Don't stop on errors.
ab -n $1 -c $2 http://127.0.0.1:12345/
#./client.sh 100 4
