-- Transpose characters on either side of the cursor
-- Philip R Brenan at gmail.com, www.appaapps.com, 2019
-- Perl Artistic License
local s  = geany.text()
local c  = geany.caret()
local l  = string.len(s)
local s1 = string.sub(s,   1, c-1)
local s2 = string.sub(s,   c, c)
local s3 = string.sub(s, c+1, c+1)
local s4 = string.sub(s, c+2)

geany.text(s1..s3..s2..s4)
geany.caret(c)
