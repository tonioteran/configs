##
## Script for checking the status of all repos inside ~/repos
## Antonio Teran
## 10/05/18
##

# go to directory:
cd ~/repos
# loop through all repos:
for e in $(find . -maxdepth 1 -type d)
do
	if [ "$e" != "." ] # ignore the current directory
	then
		cd $e
		if [ "$(git status | grep "nothing to commit")" == "" ] # if there's something to commit
		then
			echo " "
			echo "  ------------------------- "
			echo "  -       $e  "
			echo "  ------------------------- "
			echo " "
			git status
			echo " "
		fi
		cd ..
	fi
done
