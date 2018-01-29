# Copies the data in one file into another file
first_filename, second_filename = ARGV

f1 = open(first_filename)
f2 = open(second_filename, "w")

# Delete the current contents of file 2
f2.truncate(0)
# Write the new data
f2.write("~~~ This file is a copy of #{first_filename} ~~~\n\n")
f2.write(f1.read)

f1.close
f2.close