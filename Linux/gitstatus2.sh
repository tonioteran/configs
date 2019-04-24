##
## Script for checking the status of all repos inside ~/repos
## Antonio Teran
## 10/05/18
##

# go to directory:
cd /home/tonio/repos
# loop through all repos:
for e in $(find . -maxdepth 1 -type d)
do
	if [ "$e" != "." ] # ignore the current directory
	then
    echo " "
    echo $e
		cd $e # enter the directory
		# check if the directory is actually a git:
		isGit=0
		for se in $(find . -maxdepth 1 -type d)
		do
      echo ${se}
			if [ "${se}" == './.git' ]
			then
				isGit=1
			fi
		done
		# if [ "${isGit}" == "1" ]
		# then
    #     echo " hello world!"
		# 	if [ "$(git status | grep "nothing to commit")" == "" ] # if there's something to commit
		# 	then
		# 		echo " "
		# 		echo "  ------------------------- "
		# 		echo "  -       $e  "
		# 		echo "  ------------------------- "
		# 		echo " "
		# 		git status
		# 		echo " "
		# 	fi
		# fi
		cd ..
	fi
done
