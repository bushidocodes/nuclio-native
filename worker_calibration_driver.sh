rm out.txt

echo "*********************************************" >> out.txt
echo "* ab -c 100 -n 10000 http://localhost:1338/ *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 100 -n 10000 http://localhost:1338/ >> out.txt 
echo "*********************************************" >> out.txt
echo "* ab -c 200 -n 10000 http://localhost:1338/ *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 200 -n 10000 http://localhost:1338/ >> out.txt 
echo "*********************************************" >> out.txt
echo "* ab -c 500 -n 10000 http://localhost:1338/ *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 500 -n 10000 http://localhost:1338/ >> out.txt 

echo "**************************************************" >> out.txt
echo "* wrk -c 100 -t 100 -d 10 http://localhost:1338/ *" >> out.txt
echo "**************************************************" >> out.txt
wrk -c 100 -t 100 -d 10 http://localhost:1338/ >> out.txt 
echo "**************************************************" >> out.txt
echo "* wrk -c 200 -t 200 -d 10 http://localhost:1338/ *" >> out.txt
echo "**************************************************" >> out.txt
wrk -c 200 -t 200 -d 10 http://localhost:1338/ >> out.txt 
echo "**************************************************" >> out.txt
echo "* wrk -c 500 -t 500 -d 10 http://localhost:1338/ *" >> out.txt
echo "**************************************************" >> out.txt
wrk -c 500 -t 500 -d 10 http://localhost:1338/ >> out.txt 
