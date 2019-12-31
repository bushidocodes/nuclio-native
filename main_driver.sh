rm out.txt 

echo "*********************************************" >> out.txt
echo "* ab -c 1 -n 10000 http://localhost:1338/   *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 1 -n 10000 http://localhost:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 1k.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 1 -n 10000 -p 1k.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "********************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 10k.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "********************************************************************" >> out.txt
ab -c 1 -n 10000 -p 10k.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 100k.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 1 -n 10000 -p 100k.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 1m.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 1 -n 10000 -p 1m.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "***********************************************" >> out.txt
echo "* ab -c 100 -n 10000 -q http://localhost:1338/   *" >> out.txt
echo "***********************************************" >> out.txt
ab -c 100 -n 10000 http://localhost:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 1k.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 1k.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "**********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 10k.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "**********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 10k.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "***********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 100k.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "***********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 100k.txt -T text/plain http://localhost:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 1m.txt -T text/plain http://localhost:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 1m.txt -T text/plain http://localhost:1338/ >> out.txt 
