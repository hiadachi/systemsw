#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}

# TEST1: Normal case (52, 117 => 13)                                            
#————————————————————————
echo 13 > $tmp-ans
./15746104.sh 52 117 >$tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"


# TEST2: Reverse case (117, 52 => 13)                                           
#————————————————————————
echo 13 > $tmp-and
./15746104.sh 117 52 >$tmp-out || ERROR_EXIT "TEST2-1”
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2”


# TEST3: ZERO handling case1 (0, 40 => 40)                                      
#————————————————————————
echo 40 > $tmp-ans
./15746104.sh 0 40 >$tmp-out || ERROR_EXIT "TEST3-1”
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2”


# TEST4: ZERO handling case2 (0, 0 => Error, 0)  
#————————————————————————
echo Error > $tmp-ans
echo 0 >> $tmp-ans
./15746104.sh 0 0 >$tmp-out || ERROR_EXIT "TEST4-1”
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2”



#########
# TEST1 #
#########
#echo aaa bbb NG > $tmp-ans
#./same.py aaa bbb > $tmp-out || ERROR_EXIT "TEST1-1"
#diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

# TEST1: Normal case (52, 117 => 13)
# TEST2: Reverse case (117, 52 => 13)
# TEST3: ZERO handling case1 (0, 40 => 40)
# TEST4: ZERO handling case2 (0, 0 => Error, 0) 

echo OK
rm -f $tmp-*
exit 0
