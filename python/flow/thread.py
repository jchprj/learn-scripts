import threading
import time

# Reference: https://stackoverflow.com/questions/6893968/how-to-get-the-return-value-from-a-thread-in-python

def hello(n, result, index):
    print('hello {0}'.format(n))
    result[index] = "foo" + str(n)

total = 1000

start_time = time.process_time()
threads = [None] * total
results = [None] * total
for n in range(1, total + 1):
    t = threading.Thread(name=n, target=hello, args=(n, results, n - 1)) 
    t.start()
    threads[n - 1] = t
for t in threads:
    t.join()
elapsed_time1 = time.process_time() - start_time

print(results)

start_time = time.process_time()
results = [None] * total
for n in range(1, total + 1):
    hello(n, results, n - 1)
elapsed_time2 = time.process_time() - start_time
print(results)
print(elapsed_time1)
print(elapsed_time2)        # elapsed_time1 >> elapsed_time2