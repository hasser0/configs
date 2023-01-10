alias view='nano -vl'
ENVS_DIR=/home/hasser1/envs

activate(){
	if [[ $# -eq 0 ]]; then
		echo "At least one argument must be provided"
		return 0
	fi
	toactive=$ENVS_DIR/$1/bin/activate
	source $toactive
}
lsenv(){
	ls $ENVS_DIR
}
rmenv(){
	if [[ $# -eq 0 ]]; then
		echo "At least one argument must be provided"
		return 0
	fi
	toremove=$ENVS_DIR/$1
	rm -rf  $toremove
}
createenv(){
	if [[ $# -eq 0 ]]; then
		echo "At least one argument must be provided"
		return 0
	fi
	tocreate=$ENVS_DIR/$1
	python3 -m venv $tocreate
}
