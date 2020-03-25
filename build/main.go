package main

import (
	"os"
	"net/http"
	"fmt"
	"runtime"
	"path/filepath"
	
	"github.com/gin-gonic/gin"
)

var (
    _, b, _, _ = runtime.Caller(0)
    basepath   = filepath.Dir(b)
)

func main() {
	r := gin.Default()
	r.LoadHTMLGlob("public/*")
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})

	r.GET("/", func(c *gin.Context) {
		fmt.Println(basepath)
		c.HTML(http.StatusOK, "page1.html", gin.H{
			"title": "Main website",
		})
	})
	r.Run(fmt.Sprintf(":%s", os.Getenv("PORT"))) // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}