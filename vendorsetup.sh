devices=('beryllium,fajita,mido,violet,ginkgo,enchilada,davinci,raphael,vince,ysl,laurel_sprout,whyred' )

function lunch_devices() {
    add_lunch_combo ssos_${device}-user
    add_lunch_combo ssos_${device}-userdebug
}

for device in ${devices[@]}; do
    lunch_devices
done
