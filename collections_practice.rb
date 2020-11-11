def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort.reverse
# below would also work (passes)
    # array.sort do |a, b|
    #     b <=> a
    # end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
#below I found after, cleaner version (passes)
    #array.sort_by { |word| word.length }
end

def swap_elements(array)
    elem2 = array[1]
    elem3 = array[2]
    array[1] = elem3
    array[2] = elem2
    array
#below I found cleaner version (passes)
    # array[1], array[2] = array[2], array[1]
    # array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    newArray = []
    array.each do |word|
        word[2] = "$"
        newArray << word
    end
    newArray
end

def find_a(array)
    array.select { |word| word.start_with?("a")}
end

def sum_array(array)
#first way I solved
    sum = 0
    array.each do |x|
        sum += x
    end
    sum
#inject method (passes)
    # array.inject { |sum, x| sum + x }
end

def add_s (array)
# my solved way
    array.map do |word|
        if array.index(word) == 1
            word
        else
            word + "s"
        end
    end
# advanced, elegant way (passes)
    # array.each_with_index.collect { |word, index| word + "s" unless index == 1}
end


#Advanced Assignment for Question 4
def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    array
end