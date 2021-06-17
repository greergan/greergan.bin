function get_os_name {
	echo `uname -s | tr "A-Z" "a-z"`
}
function get_os_release_codename {
	echo `lsb_release -c | tr -d \s  | cut -d':' -f2  | tr "A-Z" "a-z"`
}
function get_os_release_name {
	echo `lsb_release -i | cut -d":" -f2 | sed 's/\s*//' | tr [A-Z] [a-z]`
}
function get_os_release_number {
	echo `lsb_release -r | tr -d \s  | cut -d':' -f2`
}