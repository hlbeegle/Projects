This ruby will examine the JSON feed and output a report on where there is missing information in each project. 

I did notice that the JSON feed does not have entries for any projects that are listes as "Untitled", therefore I did not include (or rather I removed) the search for Untitled projects.

While I originally intended to make a form for the user on Rails, I needed to scale back the implementation so that I would have it submitted in a timely manner. If you look on my resume you will not see Ruby mentioned. I only started to learn it after seeing the job advertisement on Ravelry.

As you requested a page (but not specifically a webpage), I opted to output the Report to a file. However, you could also output html tags to that file, and make it into a static webpage. There are many opportunities to further expand this application. It could be made interactive, and allow the user to write the information that is missing. However, I'd prefer to have access to the database for that. :)

The ruby is in ravelry_projects_babyknitcrochet.rb
Execute it by typing "ruby ravelry_projects_babyknitcrochet.rb"   (on a machine with ruby installed... and having ruby in the Path variable)
The JSON_output.txt must be in the same directory. You will also need read, write, and execute permission on the directory. It will create a file called Report_Results.txt. 
