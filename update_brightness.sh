function brightness_update {
        # Ganti baris berikut untuk menggunakan "light" alih-alih "xbacklight"
        light_level="$(light -G)"
                
                # Bulatkan tingkat cahaya ke bilangan bulat terdekat menggunakan bc
                light_level_rounded=$(echo "$light_level" | awk '{print int($1+0.5)}')

                    echo $light_level_rounded

                    if ((light_level_rounded >= 0 && light_level_rounded <= 39)); then
                        light_string="󰃚"
                    elif ((light_level_rounded >= 40 && light_level_rounded <= 69)); then
                        light_string="󰃞"
                    elif ((light_level_rounded >= 70 && light_level_rounded <= 99)); then
                        light_string=""
                    else
                    light_string=""
                    fi

                    echo -e $light_string | tee ~/.scripts/dwm/savedata/brightness_string.txt

                    "/home/alzhar/.scripts/dwm/update_all.sh"
}

brightness_update

