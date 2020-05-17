package router

import (
	"os"
	"github.com/gin-gonic/gin"

	first "github.com/michaelchandrag/fabelio-test/module/controller/first"
	second "github.com/michaelchandrag/fabelio-test/module/controller/second"
	history "github.com/michaelchandrag/fabelio-test/module/controller/history"
)

func SetupRouter() *gin.Engine {
	r := gin.Default()
	rd, _ := os.Getwd()
	r.LoadHTMLGlob(rd + "/../public/views/*")
	r.Static("/css", "public/assets/css")
	r.Static("/fonts", "public/assets/fonts")
	r.Static("/img", "public/assets/img")
	r.Static("/js", "public/assets/js")

	r.POST("/fetch_data_from_fabelio", first.FetchDataFromFabelio)

	r.GET("/", first.RenderFirstPage)
	r.GET("/page2", second.RenderSecondPage)
	r.GET("/history/:productId", history.RenderHistoryPage)

	return r
}