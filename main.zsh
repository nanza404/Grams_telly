#! /bin/zsh


last_mod_tm=""
cur_mod_tm="$(date -r $(pwd) +"%s")"


setup_media_index() {
	touch .media_index
	#add a channel swicher option
	ls -R > .media_index
}


test_last_change() {
	#tests the last time directory was modified(is the media playlist the same)
	if [[ "$cur_mod_tm" == "$last_mod_tm" ]]; then
		echo "equal"
	else
		echo "NOT equal"
	fi
}

#test_last_change
setup_media_index
