package router

import (
	"path/filepath"
    "runtime"
    "fmt"
	"github.com/gin-gonic/gin"

	first "github.com/michaelchandrag/fabelio-test/module/controller/first"
	second "github.com/michaelchandrag/fabelio-test/module/controller/second"
	history "github.com/michaelchandrag/fabelio-test/module/controller/history"
)

var (
    _, b, _, _ = runtime.Caller(0)
    basepath   = filepath.Dir(b)
)

func SetupRouter() *gin.Engine {
	r := gin.Default()
	fmt.Println(basepath)
	r.LoadHTMLGlob(basepath + "/../../public/views/*")
	r.Static("/css", basepath + "/../../public/assets/css")
	r.Static("/fonts", basepath + "public/assets/fonts")
	r.Static("/img", basepath + "public/assets/img")
	r.Static("/js", basepath + "public/assets/js")

	r.POST("/fetch_data_from_fabelio", first.FetchDataFromFabelio)

	r.GET("/", first.RenderFirstPage)
	r.GET("/page2", second.RenderSecondPage)
	r.GET("/history/:productId", history.RenderHistoryPage)

	return r
}