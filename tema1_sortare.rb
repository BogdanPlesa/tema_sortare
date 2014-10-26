def citire_din_fisier (a)
	f = open("wordlist.txt")
	f.each_line { |line| a << line }
	f.close
end

def sortare_cuvinte (arr)
	 arr = arr.sort_by  {|element| element.length}
	 return arr
end

def scriere_in_fisier (a)
	File.open("wordlist_ordered.txt", 'w+') do |f|
  	a.each { |element| f.puts(element) }
  	end
end

array_cuvinte = []
citire_din_fisier (array_cuvinte)
array_cuvinte = sortare_cuvinte (array_cuvinte)
scriere_in_fisier (array_cuvinte)