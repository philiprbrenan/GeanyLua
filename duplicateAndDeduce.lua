-- Duplicate and deduce
-- Philip R Brenan at gmail.com, www.appaapps.com, 2021
-- Perl Artistic License
local s  = geany.text()
local c  = geany.caret()
local line, column = geany.rowcol()                                             -- Line and column of caret
local t  = geany.lines(line)
local r  = string.len(t) - column + 1                                           -- Length of remainder of line
local e  = c + r + 1                                                            -- Offset of start of next line
local l  = string.len(s)
local s1 = string.sub(s,   1, e)
local s2 = string.sub("                                                         ", 0, column-1)
local s3 = "*\n";
local s4 = string.sub(s, e+1)

geany.text(s1..s2..s3..t..s4)
geany.caret(c + string.len(t) + column + 1)
