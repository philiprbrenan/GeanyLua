-- Save the current file, run Perl, reload the results
geany.save()
os.execute("/usr/bin/perl /home/phil/perl/makeWithPerl/editWithPerl.pl ".. geany.filename() .. " " .. geany.caret())
geany.open()
