TARGET=192.168.56.123
ftr=top_df_local.sh
ping $TARGET -c1 -t1 > /dev/null 2>&1
res=$?
if [ "$res" == 1 ];then
    echo "Target $TARGET is not reachable"
else
    scp  "$ftr" $TARGET:
    ssh $TARGET './$ftr; source top_df_local.sh; scp "./$folder_name/$file_name" 192.168.56.102:./code/'
fi
