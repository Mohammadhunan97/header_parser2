#Readme:


This app is a user interface which takes in a url and stores the contents of h1, h2, h3, and links (a tag src) and stores it and makes it accessable through a restful api.



A request to "/url/index" or "/url" or "/" will be made to take in an url and store the contents of the previously mentioned html tags in our postgres database. 

A request to "/tags/index" or "/tags" will be made to list all urls and contents of h1,h2,h3 tags along with link urls.



Sample Database Structure:

URL model:

ID 		url
44		http://www.google.com
45		http://www.facebook.com


Tag model:

ID 		content 				url_id
101		"welcome to facebook"	  45
102		"welcome to facebook"	  45
103		"Google Search"	 		  44


Dependencies:
Rails 5.0.3
postgres (PostgreSQL) 9.6.2
nokogiri-1.7.2
