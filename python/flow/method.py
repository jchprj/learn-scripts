
    
def t2():
    print(3)

a = {'t2': t2}
a['t2']()           # 3


def ff():
    return 333
d = ff()
print(d)            # 333


f = lambda x, y: x-y+5
print(f(5, 3))                  # 7


summaryLambdas = {}
summaryLambdas["KEY_NAME"] = lambda title, value, summary: summary[title]

print(summaryLambdas["KEY_NAME"]("KEY_NAME", 2, summaryLambdas))