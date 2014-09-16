BookCtrls = angular.module("BookCtrls", [])

class BooksCtrl
  
  constructor: (@scope, @Book)->
    @greeting = "hello world!"
    @Book.all()
    return this

  addBook: (newBook)->
    @Book.create(newBook)
    .success (data)->
      console.log(data)

  sayHello: ()->  
    "Hello there again!"


BookCtrls.controller("BooksCtrl", ["$scope", "Book", BooksCtrl])