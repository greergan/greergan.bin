function clear_term {
    echo -e '\e[3J'
}

function magenta {
    echo -e '\e[38;31;35m'
}
function green {
    echo -e '\e[38;2;0;255;02m'
}

function color_off {
    echo -e '\033[0m'
}

function display_samples {
    for fgbg in 38 48 ; do # Foreground / Background
        for color in {0..255} ; do # Colors
            # Display the color
            printf "\e[${fgbg};5;%sm  %3s  \e[0m" $color $color
            # Display 6 colors per lines
            if [ $((($color + 1) % 6)) == 4 ] ; then
                echo # New line
            fi
        done
        echo # New line
    done
}