package main
import (
	"github.com/labstack/echo"
)

func main() {
    e := echo.New()
    e.GET("/assets/:entity/file/:file", func(c echo.Context) error {
      return c.File("/public/files/" + c.Param("file"))
    })
    e.Logger.Fatal(e.Start(":1323"))
}
