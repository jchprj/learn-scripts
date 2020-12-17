
function a($b, $c)
{
    "t1"
    $b
    "t2"
    $c
    "t3"
    $b[0]
    "t4"
    $b[1]
    "t5"
}

a(1, 2)
# Output
# t1
# 1
# 2
# t2
# t3
# 1
# t4
# 2
# t5