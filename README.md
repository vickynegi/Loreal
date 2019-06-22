# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - 2.6.0
* Rails version - 5.2.3
* PostgreSql is the database
* To create the user,
    url is: localhost:3000/users
    json format is :
      {
		"first_name": "user2",
		"last_name": "sde",
		"age": 26,
		"country": "America",
		"state": "hyderabad",
		"email_id": "robin@loreal.com"
      }
 * To edit the user data, url is: localhost:3000/users/user_id,
      json format is :
      {  "id": 6,
		"first_name": "user2",
		"last_name": "sde",
		"age": 26,
		"country": "America",
		"state": "hyderabad",	
      }
 * To delete the user data, url is: localhost:3000/users/user_id,
    json format is :
      {  "id": 6 }

 * To associate tags with user, url is: localhost:3000/users/user_id/add_tag
     json format is :
     {  "id":7,
        "tag_params": 
        {
		  "name": "tag1",
		  "description": "no no no no"
        }
     }
  * To remove tag from user, url is: localhost:3000/users/user_id/remove_tag
      json format is :
      { "id":8,
        "tag_id" : 5
      }

  * To sort the user data, url is: localhost:3000/users/sort_user_data,
      json format is :
        { "field_operation": "last_name DESC" }
 
  * To lists all users data, url is: localhost:3000/users

  * To lists all tags data, url is localhost:3000/tags

  * To update the tags, url is: localhost:3000/tags/tag_id,
      json format is :
	  {
	    "tag": {
	        "id": 2,
	        "name": "786",
	        "description": "very good",
	        "user_id": 7
	    }
	}

  * To remove tag, url is: localhost:3000/tags/tag_id/
      json format is :
      { "id":8
      }
  
  * To sort the tag data, url is: localhost:3000/tags/sort_tag_data,
      json format is :
        { "field_operation": "description DESC" }
 

  * To do the filters on users, url is: localhost:3000/users/filter_users_data
    json format is :
    {
		"first_name": "",
		"last_name": "",
		"age": 25,
		"country": "rica",
		"state": "in",
		"email_id": "lorea"
      }