if ! grep -qe "test!$" "./test.txt"; then 
	echo "test!" >> ./test.txt
else
	echo "already there"
fi