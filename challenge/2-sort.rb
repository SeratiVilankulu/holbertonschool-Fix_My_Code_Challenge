# ###
# #
# #  Sort integer arguments (ascending) 
# #
# ###

# result = []
# ARGV.each do |arg|
#     # skip if not integer
#     next if arg !~ /^-?[0-9]+$/

#     # convert to integer
#     i_arg = arg.to_i
    
#     # insert result at the right position
#     is_inserted = false
#     i = 0
#     l = result.size
#     while !is_inserted && i < l do
#         if result[i] < i_arg
#             i += 1
#         else
#             result.insert(i - 1, i_arg)
#             is_inserted = true
#             break
#         end
#     end
#     result << i_arg if !is_inserted
# end

# puts result
result = []
ARGV.each do |arg|
  # Skip if not an integer
  next if arg !~ /^-?[0-9]+$/

  # Convert to integer
  i_arg = arg.to_i

  # Insert the result at the right position
  is_inserted = false
  i = 0
  l = result.size
  while !is_inserted && i < l do
    if result[i] < i_arg
      i += 1
    else
      result.insert(i, i_arg)  # Insert at position i
      is_inserted = true
      break
    end
  end
  result << i_arg if !is_inserted  # Append if not inserted earlier
end

puts result

