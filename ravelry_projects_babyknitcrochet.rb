#!/usr/bin/ruby

require 'rubygems'
require 'yajl/json_gem'

# The code for class Hash was taken directly from the example on qugstart.com/blog/uncategorized/ruby-multi-level-nested-hash-value/

class Hash
  # Fetch a nested hash value
  def hash_val(*attrs)
    attr_count = attrs.size
    current_val = self
    for i in 0..(attr_count-1)
      attr_name = attrs[i]
      return current_val[attr_name] if i == (attr_count-1)
      return nil if current_val[attr_name].nil?
      current_val = current_val[attr_name]
    end
    return nil
  end
  
  end

# End of class Hash code that was taken directly from the example on qugstart.com

json = File.new('JSON_output.txt', 'r')
parser = Yajl::Parser.new
hash_user = parser.parse(json)

#projects=hash_user.hash_val("projects")
null = nil
print "\n"
print "Hello, #{hash_user.hash_val("user", "name")}!\n\n"
 
print "I'm here to help you finish your project documentation.\n"

if File.exists?("Report_Results.txt")
  myfile = File.open("Report_Results.txt", "w+")
  else
  File.new("Report_Results.txt","w+")
end

myfile = File.open("Report_Results.txt", "w+")
myfile.each {|line| print line}

file_name="Report_Results.txt"

print "\n"

print "First off, we need to know where you forgot to enter information.\n"
print "\n"


num_projects=hash_user.hash_val("projects").length

print "You have a total of #{num_projects} projects which I will examine.\n"
print "Afterwards I will create a report for you to view.\n"
print "\n"
i=0
j=num_projects


loop do
myfile.puts((hash_user.hash_val("projects")[i]).hash_val("name"))
name_project=((hash_user.hash_val("projects")[i]).hash_val("name"))
# print "here is the name_project #{name_project}"
if (hash_user.hash_val("projects")[i]).hash_val("notes")==nil
myfile.puts("You have no notes for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("started")==nil
myfile.puts("You have no started on date for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("completed")==nil
myfile.puts("You have no completion date for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("status")==nil
myfile.puts("You have no status set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("progress")==nil
myfile.puts("You have no progress set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("happiness")==nil
myfile.puts("You have no happiness level set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("pattern")==nil
myfile.puts("You have no pattern set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("status")==nil
myfile.puts("You have no status set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("needles")==nil
myfile.puts("You have no needles set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("status")==nil
myfile.puts("You have no status set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("size")==nil
myfile.puts("You have not recorded a size for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("yarns")==nil
myfile.puts("You have no yarns associated with #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("status")==nil
myfile.puts("You have no status set for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("madeFor")==nil
myfile.puts("You have not set the recipient for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("thumbnail")==nil
myfile.puts("You have not uploaded any pictures for #{name_project}")
end
if (hash_user.hash_val("projects")[i]).hash_val("blogPosts")==nil
myfile.puts("You have not written any blog posts for #{name_project}")
end
i+=1
break if i==j
end

print "The file #{file_name} has been written to the current directory.\n"
myfile.rewind
myfile.close
print "The file #{file_name} has been closed. It is now available for viewing.\n"