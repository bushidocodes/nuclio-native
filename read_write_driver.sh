rm out.txt 

echo "*********************************************" >> out.txt
echo "* ab -c 1 -n 10000 http://192.168.0.1:1338/   *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 1 -n 10000 http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 1 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "********************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "********************************************************************" >> out.txt
ab -c 1 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 1 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 1 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 1 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************" >> out.txt
echo "* ab -c 20 -n 10000 http://192.168.0.1:1338/   *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 20 -n 10000 http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 20 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 20 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "********************************************************************" >> out.txt
echo "* ab -c 20 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "********************************************************************" >> out.txt
ab -c 20 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 20 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 20 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 20 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 20 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************" >> out.txt
echo "* ab -c 40 -n 10000 http://192.168.0.1:1338/   *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 40 -n 10000 http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 40 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 40 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "********************************************************************" >> out.txt
echo "* ab -c 40 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "********************************************************************" >> out.txt
ab -c 40 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 40 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 40 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 40 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 40 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************" >> out.txt
echo "* ab -c 60 -n 10000 http://192.168.0.1:1338/   *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 60 -n 10000 http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 60 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 60 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "********************************************************************" >> out.txt
echo "* ab -c 60 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "********************************************************************" >> out.txt
ab -c 60 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 60 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 60 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 60 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 60 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************" >> out.txt
echo "* ab -c 80 -n 10000 http://192.168.0.1:1338/   *" >> out.txt
echo "*********************************************" >> out.txt
ab -c 80 -n 10000 http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 80 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 80 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "********************************************************************" >> out.txt
echo "* ab -c 80 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "********************************************************************" >> out.txt
ab -c 80 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 80 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 80 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*******************************************************************" >> out.txt
echo "* ab -c 80 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*******************************************************************" >> out.txt
ab -c 80 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "***********************************************" >> out.txt
echo "* ab -c 100 -n 10000 -q http://192.168.0.1:1338/   *" >> out.txt
echo "***********************************************" >> out.txt
ab -c 100 -n 10000 http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 1k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "**********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "**********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 10k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "***********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "***********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 100k.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 

echo "*********************************************************************" >> out.txt
echo "* ab -c 100 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ *" >> out.txt
echo "*********************************************************************" >> out.txt
ab -c 100 -n 10000 -p 1m.txt -T text/plain http://192.168.0.1:1338/ >> out.txt 
