#! /bin/zsh



test_last_change() {
	#[-f] tests if a last mod file exists
	if [-f last_mod_file]; then
		#read contents of file into varibale last_mod_tm
	else
		last_mod_tm=""
	fi
	cur_mod_tm="$(date -r $(pwd)/Media +"%s")"

	#tests the last time directory was modified(is the media playlist the same)
	if [[ "$cur_mod_tm" == "$last_mod_tm" ]]; then
		echo "equal"
		true
	else
		echo "NOT equal"
		false
		date -r $(pwd)/Media +"%s"
	fi

	echo $last_mod_tm
	echo $cur_mod_tm

}

setup_media_index() {
	touch .media_index
	#lists files recursivly and excludes directories
	#Then grep finds the media files
	find $(ls) -not -type d | grep -E 'mkv|mp4' > .media_index
}

select_rand_media() {
	#randomly chooses a single media file

}


play_media() {
	#randomly selects a media file
	random_video=$(shuf -n 1 .media_index)
	echo $random_video
	first_previous_video=""
	sec_previous_video=""
	third_previous_video=""
	#mplayer
}


test_last_change
setup_media_index
play_media
