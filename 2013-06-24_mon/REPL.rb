Welcome to Ruby Console Boot
>> def say_hi(name)
>>   puts "Hi, " +name
>>   end
nil
>> say_hi("Pat")
Hi, Pat
nil
>> a= "apple"
"apple"
>> b=12345
12345
>> b
12345
>> a
"apple"
>> a.upcase!
"APPLE"
>> a
"APPLE"
>> c=[2,3,4,5,6,7]
[
    [0] 2,
    [1] 3,
    [2] 4,
    [3] 5,
    [4] 6,
    [5] 7
]
>> c
[
    [0] 2,
    [1] 3,
    [2] 4,
    [3] 5,
    [4] 6,
    [5] 7
]
>> d={one:1, two:2}
{
    :one => 1,
    :two => 2
}
>> d
{
    :one => 1,
    :two => 2
}
>> d[one]
NameError: undefined local variable or method `one' for main:Object
  from (irb):15
  from /Users/apprentice/.rvm/rubies/ruby-1.9.3-p374/bin/irb:16:in `<main>'
>> d(one)
NameError: undefined local variable or method `one' for main:Object
  from (irb):16
  from /Users/apprentice/.rvm/rubies/ruby-1.9.3-p374/bin/irb:16:in `<main>'
>> d{one:}
SyntaxError: (irb):17: syntax error, unexpected '}', expecting tSTRING_CONTENT or tSTRING_DBEG or tSTRING_DVAR or tSTRING_END
  from /Users/apprentice/.rvm/rubies/ruby-1.9.3-p374/bin/irb:16:in `<main>'
>> d[one:]
SyntaxError: (irb):18: syntax error, unexpected ']'
  from /Users/apprentice/.rvm/rubies/ruby-1.9.3-p374/bin/irb:16:in `<main>'
>> d
{
    :one => 1,
    :two => 2
}
>> d[:one]
1
>> d[two:]
SyntaxError: (irb):21: syntax error, unexpected ']'
  from /Users/apprentice/.rvm/rubies/ruby-1.9.3-p374/bin/irb:16:in `<main>'
>> d[:two]
2
>> c.inspect
"[2, 3, 4, 5, 6, 7]"
>> puts c
2
3
4
5
6
7
nil
>> c.object_id
70104432643920
>> d.object_id
70104432718020
>> Math.sqrt(1282)
35.805027579936315
>> include Math
Object < BasicObject
>> sqrt 64
8.0
>> Time.now
2013-06-24 16:21:15 -0700
>> Array.new(10, 'bee')
[
    [0] "bee",
    [1] "bee",
    [2] "bee",
    [3] "bee",
    [4] "bee",
    [5] "bee",
    [6] "bee",
    [7] "bee",
    [8] "bee",
    [9] "bee"
