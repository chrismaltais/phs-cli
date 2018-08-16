shopt -s expand_aliases

phs() {
	if [[ $@ == "install" ]]; then
		path=$(pwd)
		cd "$(find -name PHS-AutoBuild-v1.6.sh -type f -printf '%h\n' -quit)"
		./PHS-AutoBuild-v1.6.sh
		cd "$path"
	elif [[ $@ == "" ]]; then
		echo 
		echo "--------------------------"
		echo "Project Health Summary CLI"
		echo "--------------------------"
		echo 
		echo "Type 'phs help' for more detail"
	elif [[ $@ == "help" ]]; then
		echo
		echo "Available commands:"
		echo "-------------------"
		echo "phs help    : Display help menu"
		echo "phs install : Install PHS macro"
		echo "phs compile : Create PERSONAL.xlsb and Global.mpt template files"
		echo "phs zip     : Zip the template files to be used in the next installation"
	elif [[ $@ == "compile" ]]; then
		path=$(pwd)
		cd "$(find -name CreateTemplateFiles.sh -type f -printf '%h\n' -quit)"
                ./CreateTemplateFiles.sh
		cd "$path"
	elif [[ $@ == "zip" ]]; then
		path=$(pwd)
		cd "$(find -name ZipToAutoBuild.sh -type f -printf '%h\n' -quit)"
                ./ZipToAutoBuild.sh
		cd "$path"
	else 
		echo "Command not found. '$@' is not a valid command"
		echo "Type 'phs help' for details on available commands"
	fi
}
