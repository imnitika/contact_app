# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.5.1

* Database creation: setup mysql credentials in database.yml
                     and run command on terminal: $rake db:setup

# API DOCUMENTATION: 

* To get the contact records
GET: localhost:3002/contacts 

* To create new contact record
POST: localhost:3002/contacts
params: {"name": "david","email": "david@gmail.com"}

* To update contact record
PUT: localhost:3002/contacts/2
params: {"name": "davidsmith"}

* To update contact record
DELETE: localhost:3002/contacts/1


* To get the contact_list records
GET: localhost:3002/contact_lists 

* To create new contact_list record
POST: localhost:3002/contact_lists
params: {"name": "fav_contacts","contact_ids": "3,4"}

* To update contact_list record
PUT: localhost:3002/contact_lists/2
params: {"name": "fav_contacts_new","contact_ids": "1,2,3" }

* To update contact_list record
DELETE: localhost:3002/contact_lists/1

* To get contacts for a particular contact list
localhost:3002/contact_lists/11

response: 
{
    "id": 11,
    "name": "fav_contacts",
    "created_at": "2019-02-06T08:00:17.000Z",
    "updated_at": "2019-02-06T08:00:17.000Z",
    "contacts": [
        {
            "id": 2,
            "name": "david",
            "email": "david@gmail.com",
            "created_at": "2019-02-06T07:00:05.000Z",
            "updated_at": "2019-02-06T08:41:03.000Z"
        },
        {
            "id": 3,
            "name": "roney",
            "email": "roney@gmail.com",
            "created_at": "2019-02-06T07:17:12.000Z",
            "updated_at": "2019-02-06T07:17:12.000Z"
        },
        {
            "id": 4,
            "name": "james",
            "email": "james@gmail.com",
            "created_at": "2019-02-06T07:21:06.000Z",
            "updated_at": "2019-02-06T07:21:06.000Z"
        }
    ]
}

Note: I have used rails 5 feature of Rest API for this.