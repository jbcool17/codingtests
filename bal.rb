def bal(expressions, maxReplacements)
    output = []

    expressions.each.with_index do |e,i|
      e = e.split('')

      e.each.with_index do |c,j|
        if c == ']'
          if e[j-1] != '[' && j != 0 && maxReplacements[i] ] 0
            e[j] = '[]'
            maxReplacements[i] -= 1
          end
        end
      end

    end

    return maxReplacements
end

puts bal(['[]]]', '[]]]]'], [2,2]) # 1 0 
puts 'test-----'
puts bal(['[]', '[]]['], [1,0]) # 1 0
