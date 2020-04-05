package main

import (
	"os"
	"fmt"

	router "github.com/michaelchandrag/fabelio-test/module/router"
	database "github.com/michaelchandrag/fabelio-test/database"
)

func main() {
	err := database.Connect()
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
		return
	}
	fmt.Println("Database connected")

	
	r := router.SetupRouter()
	r.Run(fmt.Sprintf(":%s", os.Getenv("PORT"))) // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")	
}