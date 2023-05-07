// https://stackoverflow.com/questions/11352037/scala-utc-timestamp-in-seconds-since-january-1st-1970
// "Most computer clocks are not accurate enough to be able to reflect the leap-second distinction."
val timestamp: Long = System.currentTimeMillis / 1000
print(timestamp)