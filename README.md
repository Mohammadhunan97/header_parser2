#Readme:

Quick use:

'/' will let you input a url 
this will redirect you to '/url/:id_of_your_link' which will show all the contents of h1,h2,h3,a,link tags requested for that link.
You may also see all the contents of h1,h2,h3,a,link of all links by clicking the "See all available links" link on this page (this will redirect you to '/tag')



This app is a user interface which takes in a url and stores the contents of h1, h2, h3, and links (a tag and link tag) and stores it and makes it accessable through a restful api.

*** Note: Since it was specified in the assigment to use the content of the links rather than the src or the href, only the content was included, if you would like to see the src or href instead please contact me and I can adjust this *** 


Dependencies:
Rails 5.0.3
postgres (PostgreSQL) 9.6.2
nokogiri-1.7.2


Sample Database Structure:

URL model:

ID 		url
44		http://www.google.com
45		http://www.facebook.com


Tag model:

ID 		type	   content 						url_id
101		 h2		"welcome to facebook"	  		 45
102		 h3		"welcome to facebook"	  		 45
103		 link	"https://www.google.com/imghp"	 44


