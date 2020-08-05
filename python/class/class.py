class Summary:
    def abc(self, ss, sss):
        return ss + sss
    fabc = {"f":abc}
    total = 0
    exist = 0

s = Summary()
s.total = 3
ff = s.fabc["f"]
print(s.abc(5, 5))              # 10
print(ff(s, 3, 3))              # 6

ss = Summary
ss.total = 3
print(s == ss)                  # False

