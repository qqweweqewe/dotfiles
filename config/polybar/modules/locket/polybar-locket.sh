#!/bin/sh

source $HOME/.config/polybar/modules/locket/config.conf

if [ "$1" = "update" ]; then
    # update your message
    new_message=$(zenity --entry --title="Update Locket Message" --text="Enter your new message:")
    if [ -n "$new_message" ]; then
        curl -sX PUT --json "{\"password\": \"$password\", \"msg\": \"$new_message\"}" http://cubercube.ru:8080/api/v1/user/$id/msg
    fi

elif [ "$1" = "get" ]; then
    # get your own message
    response=$(curl -s http://cubercube.ru:8080/api/v1/user/$id)
    echo "$response " | zenity --text-info --title="Your Locket Message" --width=300 --height=200

else
    # this is the normal output for the polybar module
    echo "$(curl -s http://cubercube.ru:8080/api/v1/user/$friend_id) "
fi
