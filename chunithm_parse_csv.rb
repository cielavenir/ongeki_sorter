#!/usr/bin/ruby
#A(90万点)行っていない譜面については算出されるレートがずれる可能性があります

def calc_diff(n)
	if n>=1007500
		200
	elsif n>=1005000
		150+(n-1005000)/50
	elsif n>=1000000
		100+(n-1000000)/100
	elsif n>=975000
		0+(n-975000)/250
	elsif n>=925000
		-300+(n-925000)*3/500
	else
		-300+(n-925000)/125
	end
end

def calc_rank(n)
	if n>=1007500
		'SSS'
	elsif n>=1005000
		'SS+'
	elsif n>=1000000
		'SS'
	elsif n>=975000
		'S'
	elsif n>=950000
		'AAA'
	elsif n>=925000
		'AA'
	elsif n>=900000
		'A'
	else
		'-'
	end
end

require 'csv'
db=File.open(File.expand_path(File.dirname(__FILE__))+'/chunithm_constants.csv'){|f|
	h={}
	CSV.parse(f.read).each{|e|
		h[[e[0],e[1]]]=e[2]
	}
	h
}

gets
csv=CSV.parse($<.read)
a=csv.map{|line|
	constant=db[[line[1],line[6]]].to_i
	score=line[7].to_i
	rate=calc_diff(score)+constant
	[line[1],line[6],constant,score,calc_rank(score),rate]
}.sort_by{|e|-e[-1]}
puts a.map{|e|e*"\t"}
