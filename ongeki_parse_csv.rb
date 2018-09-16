#!/usr/bin/ruby
#AA(90万点)行っていない譜面については算出されるレートがずれる可能性があります

def calc_diff(n)
	if n>=1007500
		200
	elsif n>=1000000
		150+(n-1000000)/150
	elsif n>=970000
		0+(n-970000)/200
	else
		(n-970000)/175
	end
end

def calc_rank(n)
	if n>=1007500
		'SSS+'
	elsif n>=1000000
		'SSS'
	elsif n>=990000
		'SS'
	elsif n>=970000
		'S'
	elsif n>=940000
		'AAA'
	elsif n>=900000
		'AA'
	elsif n>=850000
		'A'
	else
		'-'
	end
end

db=File.open(File.expand_path(File.dirname(__FILE__))+'/ongeki_constants.csv'){|f|
	h={}
	f.each_line{|l|
		a=l.chomp.split(',')
		h[[a[0],a[1]]]=a[2]
	}
	h
}

gets
a=$<.map{|e|
	line=e.chomp.split(',')
	constant=db[[line[1],line[2]]].to_i
	score=line[5].to_i
	rate=calc_diff(score)+constant
	[line[1],line[2],constant,score,calc_rank(score),rate]
}.sort_by{|e|-e[-1]}
puts a.map{|e|e*"\t"}
