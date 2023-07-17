LETTER_VALUE_HASH = (('a'..'z').each.with_index(1) + ('A'..'Z').each.with_index(1)).to_h

 def word_is_100_points?(string)
    count = 0
    string.each_char do |letter|
        next if letter == "\n" || letter == '-'
        count += LETTER_VALUE_HASH[letter]
    end
    count == 100
 end

 def all_the_words
    dictonary = File.open('/usr/share/dict/words')
    dictonary.each do |word|
        puts word if word_is_100_points?(word)
    end
 end