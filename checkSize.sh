file=response.txt
minimumsize=36
actualsize=$(du -b "$file" | cut -f 1)
echo size is $actualsize
if [ $actualsize -ge $minimumsize ]; then
    echo size is over $minimumsize bytes
else
    echo size is under $minimumsize bytes
fi
