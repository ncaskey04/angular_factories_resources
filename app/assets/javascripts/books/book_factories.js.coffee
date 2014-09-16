BookFactories = angular.module("BookFactories",[])


BookFactories.factory("Book", ["$http", ($http)->
  return {
    all: ()->
      $http.get("/books.json").success (data)->
        console.log(data)
    ,
    create: (newBook)->
      console.log(newBook)
      $http.post("/books.json", {book: newBook})
  }
])