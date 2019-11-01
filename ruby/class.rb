$bb=22222
class AA
    @@dd = 2
    DD = 332

    def self.tttt
        @@dd = 2111
        # DD = 2
        puts @@dd
        puts DD
    end

    attr_accessor :iv2
    
    def initialize
        @instanceVariable = 234 # instance variables always private, methods default public
        @iv = 333
    end
    def get_instanceVariable
        @instanceVariable
    end
    def set_instanceVariable=(v)
        @instanceVariable = v
    end
    def iv
        @iv
    end
    def iv=(v)
        @iv = v
    end

    s = 2
    def dd(w=3, e)
        cc = 23
        puts "sss #{w} #{e} #{$bb}"
        puts self.iv2 # self only call method
    end
    def ee w=3, e
    end
    def ff(*p, a)
    end
    def gg
        [2, 3]
        3
    end
    def hh
        [2, 3]
    end
    def ii(d)
        puts "ii"
    end

    def to_s
        self
    end
end

class BB < AA
    def ii
        super(3)
    end
    def +(other)
    end
    private # modify all below
    def pp
        
    end

    protected
    def ww
    end
    public
    def rr(other)
        other.ww # need ww protected, or even other is itself, will error
    end
end


aa = AA.new
aa.dd(2)
aa.ee(9)
aa.ff(3, 3, 3)
puts aa.gg
aa.set_instanceVariable = 3
puts aa.get_instanceVariable
aa.iv = 2323
puts aa.iv
aa.iv2 = 3232
puts aa.iv2

AA.tttt

puts aa

bb = BB.new
puts bb
bb.ii
bb + aa
# aa+bb
# bb.pp
bb.rr(bb)


