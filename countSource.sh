for project in "projectA" "projectV"
do
	echo "-------------------" $project "-------------------"
	echo "Java================="
    for pattern in "if (" "for (" "while (" "switch ("
	do
		echo -e "$pattern" '\t=>\t' `grep -rsHn --include=*.java "$pattern" $project/src $project/test | wc -l` | expand -t 15
	done
	echo "jsp================="
    for pattern in "if (" "for (" "while (" "switch ("
	do
		echo -e "$pattern" '\t=>\t' `grep -rsHn --include=*.jsp "$pattern" $project/web | wc -l` | expand -t 15
	done
	echo "js================="
    for pattern in "if (" "for (" "while (" "switch ("
	do
		echo -e "$pattern" '\t=>\t' `grep -rsHn --include=*.js "$pattern" $project/web | wc -l` | expand -t 15
	done
	echo "Freemarker================="
    for pattern in "if (" "for (" "while (" "switch ("
	do
		echo -e "$pattern" '\t=>\t' `grep -rsHn --include=*.ftl "$pattern" $project/conf | wc -l` | expand -t 15
	done
	echo "XSL================="
    for pattern in "if (" "for (" "while (" "switch ("
	do
		echo -e "$pattern" '\t=>\t' `grep -rsHn --include=*.xsl "$pattern" $project/conf $project/src | wc -l` | expand -t 15
	done
	echo "VM================="
    for pattern in "if (" "for (" "while (" "switch ("
	do
		echo -e "$pattern" '\t=>\t' `grep -rsHn --include=*.vm "$pattern" $project/conf $project/src | wc -l` | expand -t 15
	done
done
